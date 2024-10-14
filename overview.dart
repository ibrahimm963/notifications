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
                projects.isEmpty
                    ? Center(child: Text('No projects available'))
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                      children: <Widget>[
                                        Container( height: 115,
                                          child: Placeholder()
                                        ),
                                        ClipPath(
                                          clipper: TrapeziumClipper(),
                                          child: Container(
                                            color: Colors.white,
                                            padding: EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              height: 100,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0,),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(right: 40.0),
                                                                                      child: Text(
                                                                                        projects[index]['name'] ?? 'Unknown',
                                                                                        style: const TextStyle(
                                                                                          color: Colors.black,
                                                                                          fontSize: 20,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Spacer(),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(right: 40.0),
                                                                                      child: Text(
                                                                                        projects[index]['projectLeader'] ?? 'No Project Leader',
                                                                                        style: const TextStyle(
                                                                                          color: Colors.black87,
                                                                                          fontSize: 16,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(right: 40.0),
                                                                                      child: Text(
                                                                                        projects[index]['adress'] ?? 'No Address',
                                                                                        style: const TextStyle(
                                                                                          color: Colors.black54,
                                                                                          fontSize: 16,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                              ),
                                            ),
                                            width: double.infinity,
                                          ),
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
    path.lineTo(size.width * 1 / 3, size.height);
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
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width * 70 / 90, 0.0);
    path.lineTo(size.width * 1 / 1.6, size.height);
    path.lineTo(size.width, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}
