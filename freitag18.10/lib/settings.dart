import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'Appwrite/constant.dart';
import 'chatprofilescreen.dart';
import 'main.dart';
import 'support.dart';
import 'user_collection_screen.dart';


class SettingsScreen extends StatefulWidget {
  final Document currentUserDocument;
  SettingsScreen({super.key, required this.currentUserDocument, required Client client});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final Client client = Client();

  bool light = false;

  @override
  void initState() {
    super.initState();
    client
        .setEndpoint(AppwriteConstants.endPoint) // Replace with your Appwrite endpoint
        .setProject(AppwriteConstants.projectId); // Replace with your Project ID
  }

  void logout() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Icon(Icons.account_circle, size: 98,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0, bottom: 3.0,),
              child: Text(widget.currentUserDocument.data["Name"],
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: Text(widget.currentUserDocument.data["Email"],
                style: TextStyle(
                    color: Color.fromARGB(255, 140, 138, 138),
                    fontWeight: FontWeight.w600
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: Container(
                width: 120, height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatProfileScreen(userId: widget.currentUserDocument.$id),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: Color(0xFF551A8B),
                  ),
                  child: Text("Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 258.0),
                child: Text("Inventories",
                  style: TextStyle(
                      color: Color.fromARGB(255, 140, 138, 138),
                      fontWeight: FontWeight.w800,
                      fontSize: 13
                  ),),
              ),
            ),
            SizedBox(width: 380, height: 120,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserCollectionScreen(isAdmin: widget.currentUserDocument.data['Admin'],)));
                      },
                      leading: Icon(Icons.store, color: Color(0xFF551A8B),),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Text("Meine Mitarbeiter",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      trailing: Icon(Icons.arrow_forward, color: Color.fromARGB(
                          255, 147, 146, 146),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        width: 337, height: 1, color: Color.fromARGB(255, 203, 198, 209),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Support()));
                      },
                      leading: Icon(Icons.support, color: Color(0xFF551A8B),),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text("Support",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      trailing: Icon(Icons.arrow_forward, color: Color.fromARGB(
                          255, 147, 146, 146),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0, top: 12.0,),
              child: Padding(
                padding: const EdgeInsets.only(right: 254.0),
                child: Text("Preferences",
                  style: TextStyle(
                      color: Color.fromARGB(255, 140, 138, 138),
                      fontWeight: FontWeight.w800,
                      fontSize: 13
                  ),),
              ),
            ),
            Container(width: 380, height: 250,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.dark_mode, color: Color(0xFF551A8B),),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text("Dark Mode",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      trailing: Switch(value: light, onChanged: (bool value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                                Text("Coming soon"),
                              ],
                             ),
                            duration: Duration(seconds: 2), // The message will be shown for 2 seconds
                          ),
                        );
                        setState(() {
                          light = value;
                        });
                      },
                        activeColor: Color(0xFF551A8B),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        width: 337, height: 1, color: Color.fromARGB(255, 203, 198, 209),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.language, color: Color(0xFF551A8B),),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text("Language",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      trailing: GestureDetector(
                        child: Icon(Icons.arrow_drop_down, color: Color.fromARGB(
                            255, 147, 146, 146), size: 30,),
                            onTap: () {
                            // ScaffoldMessenger zeigt "comming soon" an :)
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text("Coming soon"),
                              ],
                             ),
                            duration: Duration(seconds: 2), // The message will be shown for 2 seconds
                          ),
                        );
                            },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        width: 337, height: 1, color: Color.fromARGB(255, 203, 198, 209),
                      ),
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Icon(Icons.more, color: Color(0xFF551A8B),),
                        title: Text("PIN Code",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                        trailing: Icon(Icons.arrow_forward, color: Color.fromARGB(
                            255, 147, 146, 146),),
                      ),
                      onTap: () {
                        // ScaffoldMessenger zeigt "comming soon" an :)
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                                Text("Coming soon"),
                              ],
                             ),
                            duration: Duration(seconds: 2), // The message will be shown for 2 seconds
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        width: 337, height: 1, color: Color.fromARGB(255, 203, 198, 209),
                      ),
                    ),
                    ListTile(
                      onTap: logout,
                      leading: Icon(Icons.door_back_door, color: Color.fromARGB(255, 167, 23, 23),),
                      title: Text("Logout",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 23, 23),
                            fontWeight: FontWeight.w600
                        ),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}