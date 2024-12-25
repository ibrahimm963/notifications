import 'package:flutter/material.dart';
import 'package:hadeeth_pages/screens/hadeeth1.dart';
import 'package:hadeeth_pages/screens/hadeeth2.dart';
import 'package:hadeeth_pages/screens/hadeeth3.dart';
import 'package:hadeeth_pages/screens/hadeeth4.dart';
import 'package:hadeeth_pages/screens/hadeeth5.dart';
import 'package:hadeeth_pages/screens/hadeeth6.dart';

void main() {
  runApp(const Omar());
}

class Omar extends StatelessWidget {
  const Omar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/hadeeth1",
      routes: {
        "/hadeeth1": (context) => const Hadeeth1(),
        "/hadeeth2": (context) => const Hadeeth2(),
        "/hadeeth3": (context) => const Hadeeth3(),
        "/hadeeth4": (context) => const Hadeeth4(),
        "/hadeeth5": (context) => const Hadeeth5(),
        "/hadeeth6": (context) => const Hadeeth6(),
      },
    );
  }
}
