import 'Pages/ShopPage/Shop.dart';
import 'package:flutter/material.dart';
import 'Pages/HomePage/HomePage.dart';
import 'Pages/Kontakt/Kontakt.dart';

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
