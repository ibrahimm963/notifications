import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'constant.dart';
import 'ProjectDetails.dart';
import 'package:geocoding/geocoding.dart'; // For address to latitude/longitude conversion
import 'package:geolocator/geolocator.dart'; // For calculating distance

Client client = Client()
    .setEndpoint(AppwriteConstants.endPoint) // Your Appwrite API endpoint
    .setProject(AppwriteConstants.projectId); // Your project ID

Databases databases =
    Databases(client); // Initialize the Appwrite database service

class Overview extends StatefulWidget {
  final Client client;
  const Overview({super.key, required this.client, required this.userID});
  final userID;

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  late Databases databases;
  late Future<List<Map<String, String>>> projectNames;
  String userAddress = '';

  @override
  void initState() {
    super.initState();
    databases = Databases(widget.client);
    _initializeData();
  }

  Future<void> _initializeData() async {
    await fetchUserAddress(); // Ensure userAddress is fetched
    setState(() {
      projectNames = fetchProjectNames(); // Now fetch project names
    });
  }

  Future<void> fetchUserAddress() async {
    try {
      final response = await databases.getDocument(
        databaseId: AppwriteConstants.dbId,
        collectionId: AppwriteConstants.usercollectionId,
        documentId: widget.userID,
      );
      setState(() {
        userAddress = response.data['Adresse'] ?? '';
      });
    } catch (e) {
      print('Error fetching user address: $e');
    }
  }

  Future<List<Map<String, String>>> fetchProjectNames() async {
    try {
      // Ensure userAddress is available
      if (userAddress.isEmpty) {
        print('User address is empty, cannot calculate distances.');
        return [];
      }

      final response = await databases.listDocuments(
        databaseId: AppwriteConstants.dbId,
        collectionId: AppwriteConstants.baustellenoverviewCollectionId,
      );

      List<Map<String, String>> projects = [];
      for (var doc in response.documents) {
        String name = doc.data['Name'] ?? 'Unknown';
        String adress = doc.data['Adress'] ?? 'No Address';
        String projectLeader = doc.data['Projektleiter'] ?? 'Unknown';

        double distance = await calculateDistance(userAddress, adress);

        projects.add({
          'name': name,
          'adress': adress,
          'projectLeader': projectLeader,
          'id': doc.$id,
          'distance': distance.toStringAsFixed(2), // Store distance as a string
        });
      }
      return projects;
    } catch (e) {
      print('Error fetching project names: $e');
      return [];
    }
  }

  String normalizeAddress(String address) {
    return address
        .replaceAll('ß', 'ss')
        .replaceAll('ä', 'ae')
        .replaceAll('ö', 'oe')
        .replaceAll('ü', 'ue');
  }

  Future<double> calculateDistance(String address1, String address2) async {
    try {
      print('Calculating distance between: $address1 and $address2');
      if (address1.isEmpty || address2.isEmpty) {
        print('One of the addresses is empty.');
        return 0.0;
      }

      // Normalize addresses
      String normalizedAddress1 = normalizeAddress(address1);
      String normalizedAddress2 = normalizeAddress(address2);

      List<Location> locations1 = await locationFromAddress(normalizedAddress1);
      if (locations1.isEmpty) {
        print('No location found for address1: $normalizedAddress1');
        return 0.0;
      }

      List<Location> locations2 = await locationFromAddress(normalizedAddress2);
      if (locations2.isEmpty) {
        print('No location found for address2: $normalizedAddress2');
        return 0.0;
      }

      double distanceInMeters = Geolocator.distanceBetween(
        locations1.first.latitude,
        locations1.first.longitude,
        locations2.first.latitude,
        locations2.first.longitude,
      );

      return distanceInMeters / 1000; // Convert to kilometers
    } catch (e, stackTrace) {
      print('Error calculating distance: $e');
      print(stackTrace);
      return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      body: FutureBuilder<List<Map<String, String>>>(
        future: projectNames,
        builder: (context, snapshot) {
          final projects = snapshot.data ??
              []; // Verwende ein leeres Array, wenn keine Daten vorhanden sind

          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40.0, right: 44.0, top: 38.0, bottom: 16.0),
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
                // Hier wird immer das gewünschte Widget angezeigt
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: projects.isNotEmpty
                      ? projects.length
                      : 1, // Wenn Projekte vorhanden sind, zeige deren Länge an, sonst zeige 1 an
                  itemBuilder: (context, index) {
                    if (projects.isNotEmpty) {
                      // Wenn Projekte vorhanden sind, zeige das gewünschte Widget für jedes Projekt an
                      return GestureDetector(
                        onTap: () async {
                          double distance = await calculateDistance(
                              userAddress, projects[index]['adress']!);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjectDetail(
                                projectName: projects[index]['name']!,
                                projectAdress: projects[index]['adress']!,
                                projectLeader: projects[index]
                                    ['projectLeader']!,
                                currentBaustelleId: projects[index]['id']!,
                                userID: widget.userID,
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 34.0, right: 34.0, bottom: 20.0),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0))),
                                  padding: EdgeInsets.all(8.0),
                                  width: double.infinity,
                                  child: SizedBox(
                                    height: 120,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 135.0,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 7.0,
                                              bottom: 7.0,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  projects[index]['name'] ??
                                                      'Unknown',
                                                  style: const TextStyle(
                                                    color: Color(0xFFCDB38B),
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  projects[index]
                                                          ['projectLeader'] ??
                                                      'No Project Leader',
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 12.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        projects[index]
                                                                ['adress'] ??
                                                            'No Address',
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xFFAFAFAF),
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Container(
                                                        width: 70,
                                                        height: 20,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8.0)),
                                                            color: Color(
                                                                0xFFE3E3E3)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons.location_on,
                                                              color: Color(
                                                                0xFF551A8B,
                                                              ),
                                                              size: 14,
                                                            ),
                                                            Text(
                                                              '${projects[index]['distance']} km',
                                                              style:
                                                                  const TextStyle(
                                                                color: Color(
                                                                    0xFF551A8B),
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 2.5),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            width: 114,
                                            height: 114,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Image.network(
                                                "https://images.pexels.com/photos/3728022/pexels-photo-3728022.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    } else {
                      // Wenn keine Projekte vorhanden sind, zeige ein leeres Widget oder eine Standardmeldung an
                      return Container(
                        height: 136, // Gleiche Höhe wie das Projekt-Widget
                        child: Center(
                          child: Text('No projects available'),
                        ),
                      );
                    }
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
