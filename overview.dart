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
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: \${snapshot.error}'));
          }

          final projects = snapshot.data!;

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
                Container(
                  height: 1.5,
                  color: Colors.black,
                ),
                projects.isEmpty
                    ? Center(child: Text('No projects available'))
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          bool isEven = index % 2 == 0;
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
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(width: 1.5, color: Colors.black),
                                left:
                                    BorderSide(width: 1.5, color: Colors.black),
                                right:
                                    BorderSide(width: 1.5, color: Colors.black),
                              )),
                              child: Column(
                                children: isEven
                                    ? [
                                        Stack(
                                          children: <Widget>[
                                            Container(
                                                height: 136,
                                                child: Stack(
                                                  children: [
                                                    ClipRRect(
                                                      child: Image.network(
                                                        "https://media.istockphoto.com/id/2167355078/de/foto/sonnenkollektoren-kraftwerk-feld-bauernhof-luftaufnahme.jpg?s=1024x1024&w=is&k=20&c=j5lcIonXp3-t7GW3tFSWazSUrR3pKqUcOAicnEn_0rk=",
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            ClipPath(
                                              clipper: TrapeziumClipper(),
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8.0),
                                                width: double.infinity,
                                                child: SizedBox(
                                                  height: 120,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 8.0,
                                                      bottom: 8.0,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left:
                                                                        140.0),
                                                            child: Text(
                                                              projects[index][
                                                                      'name'] ??
                                                                  'Unknown',
                                                              style:
                                                                  const TextStyle(
                                                                color: Color(
                                                                    0xFFCDB38B),
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left:
                                                                        200.0),
                                                            child: Text(
                                                              projects[index][
                                                                      'projectLeader'] ??
                                                                  'No Project Leader',
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left:
                                                                        210.0),
                                                            child: Text(
                                                              projects[index][
                                                                      'adress'] ??
                                                                  'No Address',
                                                              style:
                                                                  const TextStyle(
                                                                color: Color(
                                                                    0xFFAFAFAF),
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left:
                                                                        210.0),
                                                            child: Text(
                                                              'Distance: ${projects[index]['distance']} km',
                                                              style:
                                                                  const TextStyle(
                                                                color: Color(
                                                                    0xFFAFAFAF),
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
                                        Stack(
                                          children: <Widget>[
                                            Positioned(
                                              right: 0,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                      height: 136,
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            child:
                                                                Image.network(
                                                              "https://media.istockphoto.com/id/2167355078/de/foto/sonnenkollektoren-kraftwerk-feld-bauernhof-luftaufnahme.jpg?s=1024x1024&w=is&k=20&c=j5lcIonXp3-t7GW3tFSWazSUrR3pKqUcOAicnEn_0rk=",
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      )),
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 8.0,
                                                      bottom: 8.0,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right:
                                                                        140.0),
                                                            child: Text(
                                                              projects[index][
                                                                      'name'] ??
                                                                  'Unknown',
                                                              style:
                                                                  const TextStyle(
                                                                color: Color(
                                                                    0xFFCDB38B),
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right:
                                                                        200.0),
                                                            child: Text(
                                                              projects[index][
                                                                      'projectLeader'] ??
                                                                  'No Project Leader',
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right:
                                                                        210.0),
                                                            child: Text(
                                                              projects[index][
                                                                      'adress'] ??
                                                                  'No Address',
                                                              style:
                                                                  const TextStyle(
                                                                color: Color(
                                                                    0xFFAFAFAF),
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right:
                                                                        210.0),
                                                            child: Text(
                                                              'Distance: ${projects[index]['distance']} km',
                                                              style:
                                                                  const TextStyle(
                                                                color: Color(
                                                                    0xFFAFAFAF),
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ),
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
                              ),
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
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TrapeziumClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0.0, 0.0); // Start point top-left
    path.lineTo(
        size.width * 4 / 5, 0.0); // Diagonal from top-right to bottom-left
    path.lineTo(size.width * 1 / 2, size.height);
    path.lineTo(0.0, size.height); // End point bottom-left

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
