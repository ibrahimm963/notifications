import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'Appwrite/constant.dart';

class ChatProfileScreen extends StatefulWidget {
  final String userId;
  const ChatProfileScreen({super.key, required this.userId});

  @override
  State<ChatProfileScreen> createState() => _ChatProfileScreenState();
}

class _ChatProfileScreenState extends State<ChatProfileScreen> {
  final Client client = Client();
  late final Databases databases;
  bool isLoading = true;
  Document? currentUserDocument;

  String Name = '';
  String Email = '';
  String Nummer = '';
  String Birthday = '';
  String Geburtsort = '';
  String Sprache = '';
  String Qualifikationen = '';
  bool Jobcenter = false;

  @override
  void initState() {
    super.initState();
    client
        .setEndpoint(AppwriteConstants.endPoint)
        .setProject(AppwriteConstants.projectId);
    databases = Databases(client);
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    try {
      final response = await databases.getDocument(
        databaseId: AppwriteConstants.dbId,
        collectionId: AppwriteConstants.usercollectionId,
        documentId: widget.userId,
      );
      setState(() {
        currentUserDocument = response;
        Name = response.data['Name'] ?? '';
        Email = response.data['Email'] ?? '';
        Nummer = response.data['Nummer'] ?? '';
        Birthday = response.data['Birthday'] ?? '';
        Geburtsort = response.data['Geburtsort'] ?? '';
        Sprache = response.data['Sprache'] ?? '';
        Qualifikationen = response.data['Qualifikationen'] ?? '';
        Jobcenter = response.data['Jobcenter'] ?? false;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load user data: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),

      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Stack(
            children: [
              Column(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.account_circle,
                          size: 140,
                          color: Color(0xFF551A8B),),
                      ],
                    ),
                    SizedBox(
                      child: Center(
                        child:
                        Text(Name,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.2),
                      child: SizedBox( height: 542,
                        child: Card(
                          child: Column(
                            children: [
                              _buildListTile(CupertinoIcons.mail, "Email", Email),
                              _buildDivider(),
                              _buildListTile(CupertinoIcons.phone, "Telefonnummer", Nummer),
                              _buildDivider(),
                              _buildListTile(Icons.calendar_month, "Geburtstag", Birthday),
                              _buildDivider(),
                              _buildListTile(Icons.location_city_outlined, "Geburtsort", Geburtsort),
                              _buildDivider(),
                              _buildListTile(Icons.language_outlined, "Sprachen", Sprache),
                              _buildDivider(),
                              _buildListTile(Icons.leaderboard_outlined, "Qualifikationen", Qualifikationen),
                              _buildDivider(),
                              _buildListTile(CupertinoIcons.building_2_fill, "Jobcenter", Jobcenter ? 'Ja' : 'Nein'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_outlined, color: Colors.black),
                          ),
                ),
            ],
          ),
    );
  }

  Widget _buildListTile(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF551A8B),),
        title: Text(title,
          style: TextStyle(
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w400,
              fontSize: 15
          ),),
        subtitle: Text(subtitle.isEmpty ? 'Keine Daten' : subtitle,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17
          ),),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(color: Colors.grey.shade700, height: 1, width: 360,);
  }
}