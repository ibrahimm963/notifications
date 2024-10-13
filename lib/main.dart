import 'package:flutter/material.dart';
import 'PageCollection.dart';
import 'Pages/HomePage/HomePage.dart';
void main() {
  runApp(const WebseitenVorlageIbo());
}

class WebseitenVorlageIbo extends StatelessWidget {
  const WebseitenVorlageIbo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PageCollection()
    );
  }
}
