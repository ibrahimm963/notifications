import 'package:flutter/material.dart';
import 'package:toyo_shop/info.dart';
import "package:toyo_shop/Pages/HomePage/homepage.dart";

class CollectionBanner extends StatelessWidget {
  const CollectionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Text(""),
      toolbarHeight: 960,
      flexibleSpace: Container(
        color: Colors.white,
        child: Column(
          children: [
            HomePage(),
            Padding(
              padding: const EdgeInsets.only(top: 80.0, bottom: 15.0),
              child: Text(
                "Ihr Einkaufserlebnis beginnt hier!",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: WebColors().companyColor2),
              ),
            ),
            Text(
              "Toyo-Parts",
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: WebColors().companyColor2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Text(
                "Entdecken Sie unseren Toyo-Shop und bringen Sie neuen Schwung in Ihr Fahrzeug. Wir bieten hochwertige, originale Toyota-Autoteile für jede Reparatur und Wartung.\nWählen Sie aus einem breiten Sortiment an Ersatzteilen, die perfekt auf Ihr Modell abgestimmt sind. Jetzt Teile sichern!",
                style:
                    TextStyle(color: WebColors().companyColor2, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floating: false,
      pinned: false,
    );
  }
}
