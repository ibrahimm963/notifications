import 'package:flutter/material.dart';
import 'package:ibrahimsite/Pages/HomePage/HomePage.dart';

class PageCollection extends StatelessWidget {
  const PageCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomePage()
      ],
    );
  }
}