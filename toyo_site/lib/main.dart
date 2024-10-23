import 'Pages/combined_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHeader());
}

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CombinedPages(),
    );
  }
}