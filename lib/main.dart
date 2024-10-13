import 'package:flutter/material.dart';
import 'package:ibrahimsite/PageCollection.dart';
import 'package:ibrahimsite/Pages/HomePage/HomePage.dart';
void main() {
  runApp(const WebseitenVorlageIbo());
}

class WebseitenVorlageIbo extends StatelessWidget {
  const WebseitenVorlageIbo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PageCollection()
    );
  }
}