import 'package:toyo_site/Pages/Footer/FooterBanner.dart';
import 'package:toyo_site/Pages/Footer/footer_infos.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FooterBanner(),
        FooterInfo(),
      ],
    );
  }
}