import 'package:flutter/material.dart';
import 'package:workstation/local_notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Local Notifications"),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {
              LocalNotifications.showSimpleNotification(title: "title", body: "body", payload: "payload");
            },
            label: Text("Simple Notification"),
          )
        ],
      ),
    );
  }
}
