import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'constant.dart';
import 'ProjectDetails.dart';

Client client = Client()
  .setEndpoint(AppwriteConstants.endPoint) // Your Appwrite API endpoint
  .setProject(AppwriteConstants.projectId); // Your project ID

Databases databases = Databases(client); // Initialize the Appwrite database service

class Overview extends StatefulWidget {
  final Client client;
  const Overview({super.key, required this.client});

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  late Databases databases;
  late Future<List<Map<String, String>>> projectNames;

  @override
  void initState() {
    super.initState();
    databases = Databases(widget.client);
    projectNames = fetchProjectNames();  // Fetch project names from Appwrite
  }

 Future<List<Map<String, String>>> fetchProjectNames() async {
  try {
    final response = await databases.listDocuments(
      databaseId: AppwriteConstants.dbId,
      collectionId: AppwriteConstants.baustellenoverviewCollectionId,
    );

    List<Map<String, String>> projects = [];
    for (var doc in response.documents) {
      String name = doc.data['Name'] ?? 'Unknown';
      String adress = doc.data['Adress'] ?? 'No Address';
      String projectLeader = doc.data['Projektleiter'] ?? 'Unknown'; // Fetch project leader dynamically
      projects.add({
        'name': name,
        'adress': adress,
        'projectLeader': projectLeader,
        'id': doc.$id,  // Add the project ID here
      });
    }
    return projects;
  } catch (e) {
    print('Error fetching project names: $e');
    return [];
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      body: FutureBuilder<List<Map<String, String>>>(
        future: projectNames,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final projects = snapshot.data!;

          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 44.0, top: 38.0, bottom: 16.0),
                  child: Row(
                    children: [
                      Text(
                        "Hello!",
                        style: TextStyle(
                          color: Color(0xFF551A8B),
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Project Overview",
                        style: TextStyle(
                          color: Color(0xFFCDB38B),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 1.5, color: Colors.black,),
                projects.isEmpty
                    ? Center(child: Text('No projects available'))
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          bool isEven = index % 2 == 0;
                          return GestureDetector(
                            onHorizontalDragCancel: () {
                              print("dfdfdfdf");
                            },
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProjectDetail(
                                    projectName: projects[index]['name']!,
                                    projectAdress: projects[index]['adress']!,
                                    projectLeader: projects[index]['projectLeader']!,
                                    currentBaustelleId: projects[index]['id']!,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: 1.5, color: Colors.black),
                                  left: BorderSide(width: 1.5, color: Colors.black),
                                  right: BorderSide(width: 1.5, color: Colors.black),
                                )
                                ),
                              child: Column(
                                children: isEven
                                              ? [
                                                // Wenn der Index gerade ist, zeige Text rechts und Bild links
                                                Stack(children: <Widget>[
                                Container(
                                  height: 136,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                          child: Image.network("https://media.istockphoto.com/id/2167355078/de/foto/sonnenkollektoren-kraftwerk-feld-bauernhof-luftaufnahme.jpg?s=1024x1024&w=is&k=20&c=j5lcIonXp3-t7GW3tFSWazSUrR3pKqUcOAicnEn_0rk=",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 105.0, left: 120.0),
                                          child: Container( width: 80, height: 23,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE3E3E3),
                                              borderRadius: BorderRadius.all(Radius.circular(8.0))
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                Icon(Icons.location_on, size: 18, color: Color(0xFF551A8B),),
                                                Text("7 km",
                                                style: TextStyle(
                                                  color: Color(0xFF551A8B),
                                                ),)
                                              ],
                                              ),
                                            ),
                                            ),
                                        ),
                                    ],
                                  )
                                ),
                                // Weißer Container mit ClipPath und Textinhalten
                                ClipPath(
                                  clipper: TrapeziumClipper(),
                                  child: Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(8.0),
                                    width: double.infinity,
                                    child: SizedBox(
                                      height: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              // Projektname
                                              Padding(
                                                padding: const EdgeInsets.only(left: 140.0),
                                                child: Text(
                                                  projects[index]['name'] ?? 'Unknown',
                                                  style: const TextStyle(
                                                    color: Color(0xFFCDB38B),
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              // Projektleiter
                                              Padding(
                                                padding: const EdgeInsets.only(left: 200.0),
                                                child: Text(
                                                  projects[index]['projectLeader'] ?? 'No Project Leader',
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ),
                                              // Adresse
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 210.0),
                                                child: Text(
                                                  projects[index]['adress'] ?? 'No Address',
                                                  style: const TextStyle(
                                                    color: Color(0xFFAFAFAF),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                                                ]
                                              : [
                                                  // Wenn der Index ungerade ist, zeige Text links und Bild rechts
                                                  Stack(
                              children: <Widget>[
                                Positioned(
                                  right: 0, // Bild nach rechts schieben
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 136,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              child: Image.network("https://media.istockphoto.com/id/2167355078/de/foto/sonnenkollektoren-kraftwerk-feld-bauernhof-luftaufnahme.jpg?s=1024x1024&w=is&k=20&c=j5lcIonXp3-t7GW3tFSWazSUrR3pKqUcOAicnEn_0rk=",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                          padding: const EdgeInsets.only(top: 105.0, left: 110.0),
                                          child: Container( width: 80, height: 23,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE3E3E3),
                                              borderRadius: BorderRadius.all(Radius.circular(8.0))
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                Icon(Icons.location_on, size: 18, color: Color(0xFF551A8B),),
                                                Text("7 km",
                                                style: TextStyle(
                                                  color: Color(0xFF551A8B),
                                                ),)
                                              ],
                                              ),
                                            ),
                                            ),
                                        ),
                                          ],
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                                ClipPath(
                                  clipper: TrapeziumClipper2(),
                                  child: Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 140.0),
                                                child: Text(
                                                  projects[index]['name'] ?? 'Unknown',
                                                  style: const TextStyle(
                                                    color: Color(0xFFCDB38B),
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              // Projektname
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 200.0),
                                                child: Text(
                                                  projects[index]['projectLeader'] ?? 'No Project Leader',
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ),
                                              //Projektleiter
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 210.0),
                                                child: Text(
                                                  projects[index]['adress'] ?? 'No Address',
                                                  style: const TextStyle(
                                                    color: Color(0xFFAFAFAF),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              // Adresse
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    width: double.infinity,
                                  ),
                                ),
                                
                              ],
                            )
                            
                                                ],
                              )
                            ),
                          );
                        },
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}


class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width * 20 / 100, 0.0);
    path.lineTo(size.width * 1 / 2, size.height);
    path.lineTo(size.width, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}

class TrapeziumClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0.0, 0.0); // Startpunkt links oben
    path.lineTo(size.width * 4 / 5, 0.0); // Diagonale von rechts oben nach links unten
    path.lineTo(size.width * 1 / 2, size.height);
    path.lineTo(0.0, size.height); // Ende links unten

    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}
