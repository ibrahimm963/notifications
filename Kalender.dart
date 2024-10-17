import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:appwrite/appwrite.dart';
import 'provider/constant.dart';
import 'package:appwrite/models.dart';

class Kalender extends StatefulWidget {
  @override
   final String userID; // Declare userID as a final variable

  Kalender({super.key, required this.userID}); // Mark userID as required
  _KalenderState createState() => _KalenderState();
}

class _KalenderState extends State<Kalender> {
  late Client _client;
  late Databases _databases;
  late final ValueNotifier<List<Map<String, dynamic>>> _selectedEvents;
  DateTime? _selectedDay;
  final Map<DateTime, List<Map<String, dynamic>>> _events = {};
  final List<Map<String, dynamic>> _announcements = [];
  List<Document> userList = [];
  List<String> assignedWorkers = [];

  @override
  void initState() {
    super.initState();
    _initializeAppwrite();
    
    _fetchUsers(); // Fetch users from Appwrite
    _selectedEvents = ValueNotifier([]);
  }

  void _initializeAppwrite() {
    _client = Client()
      ..setEndpoint(AppwriteConstants.endPoint)
      ..setProject(AppwriteConstants.projectId);
    _databases = Databases(_client);
    _fetchEvents(); // Fetch tasks when initializing
    _fetchAnnouncements(); // Fetch announcements when initializing
  }

  // Fetch tasks from Appwrite
  // Fetch tasks from Appwrite
void _fetchEvents() async {
  try {
    final response = await _databases.listDocuments(
      databaseId: AppwriteConstants.dbId,
      collectionId: AppwriteConstants.task,
    );

    for (var doc in response.documents) {
      DateTime date = DateTime.parse(doc.data['date']);
      String text = doc.data['text'] ?? 'No Task';
      String priority = doc.data['priority'] ?? 'Normal';
      if (doc.data["SenderID"] == widget.userID) {_events[date] = (_events[date] ?? [])..add({
        'text': text,
        'priority': priority,
        'time': doc.data['time'] ?? 'No Time',
        'documentId': doc.$id, // Hier speichern wir die documentId
      });} else if (doc.data["RecieverID"] == widget.userID) {
        _events[date] = (_events[date] ?? [])..add({
        'text': text,
        'priority': priority,
        'time': doc.data['time'] ?? 'No Time',
        'documentId': doc.$id, // Hier speichern wir die documentId
      });
      }
      
    }
    _updateSelectedEvents();
  } catch (e) {
    print('Error fetching tasks: $e');
  }
}


  // Fetch announcements from Appwrite
  void _fetchAnnouncements() async {
    try {
      final response = await _databases.listDocuments(
        databaseId: AppwriteConstants.dbId,
        collectionId: AppwriteConstants.announcement,
      );

      for (var doc in response.documents) {
        DateTime date = DateTime.parse(doc.data['date']);
        String title = doc.data['title'] ?? 'No Title';
        String description = doc.data['description'] ?? 'No Description';

        _announcements.add({
          'title': title,
          'description': description,
          'date': date.toIso8601String(),
        });
      }
    } catch (e) {
      print('Error fetching announcements: $e');
    }
  }

  // Update selected events based on the selected day
  void _updateSelectedEvents() {
    if (_selectedDay != null) {
      _selectedEvents.value = _events[_selectedDay] ?? [];
    }
  }

  // Get announcements for the selected day
  List<Map<String, dynamic>> _getAnnouncementsForDay(DateTime? day) {
    if (day == null) return [];
    return _announcements.where((announcement) {
      DateTime announcementDate = DateTime.parse(announcement['date']);
      return announcementDate.year == day.year &&
          announcementDate.month == day.month &&
          announcementDate.day == day.day;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        backgroundColor: Color(0xFFE3E3E3),
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Text('Kalender',
          style: TextStyle(
            color: Color(0xFFCDB38B),
            fontWeight: FontWeight.bold,
          ),),
        ),
      centerTitle: true,
      ),
      body: Column(
        children: [
          // Calendar widget
          Container(
            margin: EdgeInsets.all(16),
            
            
            child: TableCalendar(

              firstDay: DateTime.now().subtract(Duration(days: 365),),
              lastDay: DateTime.now().add(Duration(days: 365)),
              focusedDay: _selectedDay ?? DateTime.now(),
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Color(0xFFCDB38B), // Farbe für ausgewählten Tag
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: Color(0xFF551A8B), // Farbe für heutigen Tag
                  shape: BoxShape.circle,
                ),
              ),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _updateSelectedEvents();
                });
              },
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0,),
            child: Container(width: 600, height: 1, color: Color(0xFFAFAFAF),),
          ),
          Expanded(
            child: ValueListenableBuilder<List<Map<String, dynamic>>>(
              valueListenable: _selectedEvents,
              builder: (context, events, _) {
                final announcements = _getAnnouncementsForDay(_selectedDay);
                return ListView(
                  children: [
                    Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _weekdayList("Mon", 14, Color(0xFFCDB38B)),
                  _weekdayList("Tue", 15, Color(0xFFCDB38B)),
                  _weekdayList("Wed", 16, Color(0xFFCDB38B)),
                  _weekdayList("Thu", 17, Color(0xFFCDB38B)),
                  _weekdayList("Fri", 18, Color(0xFF551A8B)),
                  _weekdayList("Sat", 19, Color(0xFFCDB38B)),
                  _weekdayList("Sun", 20, Color(0xFFCDB38B)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, left: 12.0, right: 12.0,),
            child: Container(width: 600, height: 1, color: Color(0xFFAFAFAF),),
          ),
                    if (announcements.isNotEmpty)
                      ...announcements.map((announcement) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Container(width: 20, height: 1, color: Color(0xFFAFAFAF),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0, left: 150.0,),
                              child: Container(height: 100,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 204, 188, 220),
                                  border: Border.all(color: Color(0xFFAFAFAF)),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0)
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(announcement['title'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF551A8B)
                                      ),),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 180, 146, 211),
                                              border: Border.all(color: Color(0xFFAFAFAF)),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5.0)
                                              )
                                            ),
                                            width: 20, height: 20, 
                                            child: Icon(Icons.announcement,
                                            size: 17,
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(announcement['description'],
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF551A8B)
                                          ),),
                                        ],
                                      ),
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.account_circle, size: 30,),
                                          Icon(Icons.account_circle, size: 30,),
                                          Icon(Icons.account_circle, size: 30,),
                                          Icon(Icons.account_circle, size: 30,),
                                          Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey,),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ...events.map((event) {
                      return Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Container(width: 20, height: 1, color: Color(0xFFAFAFAF),),
                            ),
                          Spacer(),
                          Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0, left: 150.0,),
                          child: GestureDetector(
                            child: Container(height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 221, 206),
                                border: Border.all(color: Color(0xFFAFAFAF)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0)
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(event['text'],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFCDB38B)
                                        ),),
                                        Spacer(),
                                        IconButton(
                                  onPressed: () {
                                                setState(() {
                                                  _events[_selectedDay]?.remove(event); // Entferne die Aufgabe
                                                  _updateSelectedEvents(); // Aktualisiere die angezeigten Ereignisse
                                                });
                                                _deleteTaskFromAppwrite(event['documentId']);
                                              },
                                  icon: Icon(Icons.close)
                                ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 179, 161, 134),
                                            border: Border.all(color: Color(0xFFAFAFAF)),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)
                                            )
                                          ),
                                          width: 20, height: 20, 
                                          child: Icon(Icons.announcement,
                                          size: 17,
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text('Zeit: ${event['time']} | Priorität: ${event['priority']}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFCDB38B)
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                                      _showTaskDialog(
                                          existingTask: event['text'], // Vorhandenen Text
                                          existingPriority: event['priority'], // Vorhandene Priorität
                                          existingTime: event['time'], // Vorhandene Zeit
                                        );
                                      },
                          ),
                                              ),
                        ],
                      );
                    }).toList(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: _selectedDay != null
          ? Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: FloatingActionButton(
                    onPressed: _showFabOptions, // Öffne die Auswahl mit Optionen
                    child: Icon(Icons.add, color: Colors.white), // Symbol für das FAB
                    backgroundColor: Color(0xFFCDB38B), // Hintergrundfarbe des FAB
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50), // Runde Form des FAB
                    ),
                    tooltip: 'Optionen anzeigen', // Tooltip für das FAB
                  ),
              ),
                Spacer(),
            ],
          )
          : null, // Zeige FAB nur, wenn ein Datum ausgewählt ist
    );
  }

  void _showFabOptions() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.task), // Symbol für Aufgaben
              title: Text('Aufgabe hinzufügen'),
              onTap: () {
                Navigator.of(context).pop(); // Schließe die Auswahl
                _showTaskDialog(); // Öffne den Dialog zum Hinzufügen einer Aufgabe
              },
            ),
            ListTile(
              leading: Icon(Icons.announcement), // Symbol für Ankündigungen
              title: Text('Ankündigung hinzufügen'),
              onTap: () {
                Navigator.of(context).pop(); // Schließe die Auswahl
                _showAnnouncementDialog(); // Öffne den Dialog zum Hinzufügen einer Ankündigung
              },
            ),
          ],
        );
      },
    );
  }
 void _showTaskDialog({String? existingTask, String? existingPriority, String? existingTime}) {
    final TextEditingController taskController = TextEditingController(text: existingTask);
    final TextEditingController timeController = TextEditingController(text: existingTime);
    String? selectedPriority = existingPriority ?? 'Mittelschwer'; // Standardpriorität

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder( // StatefulBuilder wird verwendet, um den Zustand im Dialog zu verwalten
        builder: (context, setState) {
          return AlertDialog(
            title: Text(existingTask == null ? 'Neue Aufgabe hinzufügen' : 'Aufgabe bearbeiten'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: taskController,
                  decoration: InputDecoration(hintText: 'Aufgabentext eingeben'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: timeController,
                  decoration: InputDecoration(hintText: 'Zeit eingeben (z.B. 14:00)'),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                SizedBox(height: 10),
                // Dropdown für die Auswahl der Priorität
                DropdownButton<String>(
                  value: selectedPriority,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedPriority = newValue; // Aktualisiere die ausgewählte Priorität
                    });
                  },
                  items: <String>['Leicht', 'Mittelschwer', 'Schwer']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 10,),
                MultiSelectDialogField(
              items: userList.map((user) {
                return MultiSelectItem<Document>(user, user.data['Name']); // Use Document directly
              }).toList(),
              title: const Text("Choose Workers"),
              selectedColor: Colors.blue,
              buttonText: const Text(
                "Leute Hinzufügen",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              onConfirm: (List<Document> selectedWorkers) {
                // Save selected workers
                setState(() {
                  assignedWorkers = selectedWorkers.map((worker) => worker.data['Name'] as String).toList(); // Cast to String
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Assigned Workers: ${assignedWorkers.join(', ')}'),
                  ));
                });
              },
            ),

              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  if (taskController.text.isNotEmpty && _selectedDay != null) {
                    final newTask = {
                      'text': taskController.text,
                      'time': timeController.text,
                      'priority': selectedPriority, 
                      'date' :  _selectedDay?.toIso8601String(),
                      'SenderID' : widget.userID
                    };

                    setState(() {
                      // Neue Aufgabe hinzufügen oder bestehende aktualisieren
                      if (existingTask == null) {
                        if (_events[_selectedDay] == null) {
                          _events[_selectedDay!] = [];
                        }
                        _events[_selectedDay]!.add(newTask);
                      } else {
                        final taskIndex = _events[_selectedDay]!.indexWhere((task) => task['text'] == existingTask);
                        if (taskIndex != -1) {
                          _events[_selectedDay]![taskIndex] = newTask;
                        }
                      }
                      _updateSelectedEvents(); // Ereignisse aktualisieren
                    });

                    _addTaskToAppwrite(newTask);

                  }
                  Navigator.of(context).pop(); // Schließe den Dialog
                },
                child: Text(existingTask == null ? 'Hinzufügen' : 'Speichern'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Abbrechen'),
              ),
            ],
          );
        },
      );
    },
  );
}
void _showAnnouncementDialog() {
    final TextEditingController titleController = TextEditingController(); // Controller für den Titel
    final TextEditingController descriptionController = TextEditingController(); // Controller für die Beschreibung

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Neue Ankündigung hinzufügen'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(hintText: 'Titel eingeben'), // Eingabeaufforderung für Titel
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(hintText: 'Beschreibung eingeben'), // Eingabeaufforderung für Beschreibung
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Hinzufügen der Ankündigung
                if (titleController.text.isNotEmpty && descriptionController.text.isNotEmpty) {
                  final newAnnouncement = {
                    'title': titleController.text,
                    'description': descriptionController.text,
                    'date': _selectedDay != null ? _selectedDay!.toIso8601String() : DateTime.now().toIso8601String(), // Speichern des aktuellen Datums
                  };

                  setState(() {
                    _announcements.add(newAnnouncement); // Füge die neue Ankündigung hinzu
                    print(_announcements);
                  });

                  _addAnnouncementToAppwrite(newAnnouncement);

                }
                  
                
                Navigator.of(context).pop(); // Schließe den Dialog
              },
              child: Text('Hinzufügen'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Schließe den Dialog ohne Änderungen
              child: Text('Abbrechen'),
            ),
          ],
        );
      },
    );
  }

void _addAnnouncementToAppwrite(Map<String, dynamic> announcement) async {
  try {
    await _databases.createDocument(
      databaseId: AppwriteConstants.dbId, // Deine Appwrite-Datenbank-ID
      collectionId: AppwriteConstants.announcement, // ID der Ankündigungssammlung
      documentId: ID.unique(), // Lass Appwrite eine eindeutige ID generieren
      data: announcement,
      permissions: [
        Permission.write(Role.any()),
        Permission.read(Role.any()),
      ],
    );
    print('Task added successfully!');
  } catch (e) {
    print('Error adding task: $e');
  }
}

void _addTaskToAppwrite(Map<String, dynamic> task) async {
  try {
    await _databases.createDocument(
      databaseId: AppwriteConstants.dbId, // Your Appwrite database ID
      collectionId: AppwriteConstants.task, // Your collection ID
      documentId: ID.unique(), // Let Appwrite generate a unique ID
      data: task,

      permissions: [
        Permission.write(Role.any()),
        Permission.read(Role.any()),
      ],
      
    );
    print('Task added successfully!');
  } catch (e) {
    print('Error adding task: $e');
  }
}

void _deleteTaskFromAppwrite(String documentId) async {
  try {
    await _databases.deleteDocument(
      databaseId: AppwriteConstants.dbId,
      collectionId: AppwriteConstants.task,
      documentId: documentId,
    );
    print('Task deleted successfully!');
  } catch (e) {
    print('Error deleting task: $e');
  }
}

Future<void> _fetchUsers() async {
    try {
      var response = await databases.listDocuments(
        databaseId: AppwriteConstants.dbId,
        collectionId: AppwriteConstants.usercollectionId, // Replace with your user collection ID
      );

      setState(() {
        userList = response.documents;
        print(userList);
      }
    );
   } catch (e) {
      print('Error fetching users: $e');
    }
  }

  Widget _weekdayList(
    String weekday,
    int monthday,
    Color boxcol,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70, height: 80,
        decoration: BoxDecoration(
          color: boxcol,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(monthday.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
              Spacer(),
              Text(weekday,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(".",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 19,
                  ),),
                  Text(".",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 19,
                  ),),
                  Text(".",
                  style: TextStyle(
                    color: Color(0xFFAFAFAF),
                    fontSize: 19,
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  }
