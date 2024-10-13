import 'package:flutter/material.dart';
import 'Pages/Bewertungen/Bewertungen.dart';
import 'Pages/HomePage/HomePage.dart';
import 'Pages/Kontakt/Kontakt.dart';
import 'Pages/Leistungen/Leistungen.dart';
import 'Pages/Mission/Mission.dart';
import 'Pages/Team/Team.dart';

class PageCollection extends StatelessWidget {
  const PageCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
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
