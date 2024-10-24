import 'package:flutter/material.dart';
import 'Pages/combined_pages.dart';

void main() {
  runApp(ToyoShop());
}

class ToyoShop extends StatelessWidget {
  const ToyoShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CombinedPages(),
    );
  }
}
