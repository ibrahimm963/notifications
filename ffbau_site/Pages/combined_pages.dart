import 'package:ffbau_site/Pages/ArtikelPage/ArtikelPage.dart';
import 'package:ffbau_site/Pages/ArtikelPreview/categories.dart';
import 'package:ffbau_site/Pages/Footer/Footer.dart';
import 'package:ffbau_site/Pages/HomePage.dart';
import 'package:ffbau_site/Pages/HighlightScreen/HighlightScreen.dart';
import 'package:flutter/material.dart';

class CombinedPages extends StatelessWidget {
  const CombinedPages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomePage(),
            Kategorien(),
            ArtikelPage(),
            HighlightsPage(),
            Footer(),
            
          ],
        ),
      ),
    );
  }
}

