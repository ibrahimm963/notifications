import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'Appwrite/constant.dart';

class UserCollectionScreen extends StatefulWidget {
  final bool isAdmin;
  UserCollectionScreen({required this.isAdmin});

  @override
  _UserCollectionScreenState createState() => _UserCollectionScreenState();
}

class _UserCollectionScreenState extends State<UserCollectionScreen> {
  final Client client = Client();
  late final Databases databases;
  List<Document> userDocuments = [];
  bool isLoading = true;

  _UserCollectionScreenState() {
    databases = Databases(client);
  }

  @override
  void initState() {
    super.initState();
    client
        .setEndpoint(AppwriteConstants.endPoint) // Replace with your Appwrite endpoint
        .setProject(AppwriteConstants.projectId); // Replace with your Project ID
    if (widget.isAdmin) {
      fetchUserDocuments();
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> fetchUserDocuments() async {
    try {
      final response = await databases.listDocuments(
        databaseId: AppwriteConstants.dbId,
        collectionId: AppwriteConstants.usercollectionId,
      );
      setState(() {
        userDocuments = response.documents;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load users: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xFFE3E3E3),
        centerTitle: true,
        title: Text("User Collection",
        style: TextStyle(
          color: Color(0xFFCDB38B),
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : !widget.isAdmin
              ? Center(child: Text('Not enough rights to view this information.'))
              : userDocuments.isEmpty
                  ? Center(child: Text('No users found.'))
                  : ListView.builder(
                      itemCount: userDocuments.length,
                      itemBuilder: (context, index) {
                        final userDocument = userDocuments[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20)
                                )
                              ),
                              width: 500, height: 80,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 65, height: 65,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20)
                                        )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.account_circle, size: 60, color: Color(0xFFCDB38B),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(userDocument.data['Name'] ?? 'No Name',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                          ),),
                                          Spacer(),
                                          Text(userDocument.data['Email'] ?? 'No Email',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xFFAFAFAF)
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                             onTap: () {
                                // You could add logic here to navigate to a user profile or edit screen
                              },
                          ),
                        );
                      },
                    ),
    );
  }
}