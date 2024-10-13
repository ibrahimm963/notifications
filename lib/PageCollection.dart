import 'package:flutter/material.dart';
import 'package:ibrahimsite/Pages/Bewertungen/Bewertungen.dart';
import 'package:ibrahimsite/Pages/HomePage/HomePage.dart';
import 'package:ibrahimsite/Pages/Kontakt/Kontakt.dart';
import 'package:ibrahimsite/Pages/Leistungen/Leistungen.dart';
import 'package:ibrahimsite/Pages/Mission/Mission.dart';
import 'package:ibrahimsite/Pages/Team/Team.dart';

class PageCollection extends StatelessWidget {
  const PageCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          HomePage(),
          LeistungenPage(),
          TeamPage(),
          MissionPage(),
          BewertungenPage(),
          KontaktPage(),
          SizedBox(height: 40,)
        ],
      ),
    );
  }
}