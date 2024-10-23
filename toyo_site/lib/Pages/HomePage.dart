import 'package:toyo_site/Pages/HomePage/BannerContent.dart';
import 'package:toyo_site/Pages/HomePage/Header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          // Hintergrundbild
          Positioned.fill(
            child: Image.network(
              "https://media.istockphoto.com/id/685796748/de/foto/professionellen-mechaniker-reparieren-einen-mietwagen-in-autowerkstatt.jpg?s=2048x2048&w=is&k=20&c=qpGbaAO4PeSCPx_kBKPDHjH0pROj6cfcFeWBEI4p8w8=",
              fit: BoxFit.cover, // Bild anpassen
            ),
          ),
          // Inhalt
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(),
                BannerContent(),
              ],
            ),
          ),
        ],
      );
  }
}
