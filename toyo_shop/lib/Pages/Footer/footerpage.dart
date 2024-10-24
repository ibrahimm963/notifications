import 'package:flutter/material.dart';
import 'package:toyo_shop/Pages/Footer/footer_infos.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        FooterInfo(),
      ],
    );
  }
}
