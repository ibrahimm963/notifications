import 'package:exklusivawebseite/Pages/ShopPage/Shop.dart';
import 'package:flutter/material.dart';
import 'package:exklusivawebseite/Pages/HomePage/HomePage.dart';
import 'package:exklusivawebseite/Pages/Kontakt/Kontakt.dart';

class PageCollection extends StatelessWidget {
  const PageCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          HomePage(),
          ShopPage(),
          KontaktPage(),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
