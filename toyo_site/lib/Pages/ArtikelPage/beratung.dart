import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toyo_site/info.dart';

class BeratungPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Was wir machen",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 100.0,
            left: 100.0,
            top: 20.0,
          ),
          child: Text(
            "Die Toyo-Schmiede bietet original Toyota-Autoteile, professionellen Einbau und Reparaturen an.\nSpezialisiert auf Toyota-Fahrzeuge, gewährleistet sie fachgerechten Service und höchste Qualität.",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: WebColors().companyColor2),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: _containerBoxes(
              Icons.trending_up,
              'Strategieberatung',
              '- Entwicklung klarer Strategien für nachhaltigen Erfolg.\n- Unterstützung bei der Umsetzung langfristiger Ziele.',
              "20 €",
              "https://media.istockphoto.com/id/1705145695/de/foto/team-geschäftsleute-oder-ein-buchhalterteam-analysieren-datendiagramme-grafiken-und-ein.jpg?s=2048x2048&w=is&k=20&c=0PUA5kXEoWCbSH7P0a1ZN2y6ujiCkQvn_eqMvWVCP7E="),
        ),
      ],
    );
  }

  Widget _containerBoxes(
    IconData icondata,
    String title,
    String content,
    String info,
    String image,
  ) {
    return Container(
      height: 707,
      width: 1560,
      decoration: BoxDecoration(
          color: Color(0xFFE3E3E3),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.black, width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.all(18.0,),
        child: Stack(
          children: [
            ClipRRect(
  borderRadius: BorderRadius.circular(50), // You can change this value to adjust the corner radius
  child: Image.network(
    "https://raw.githubusercontent.com/SoufianElfouzari/website_pictures/refs/heads/main/toyo/WhatsApp%20Image%202024-10-23%20at%2010.20.15%20(4).jpeg",
    width: 1600,
    height: 700,
    fit: BoxFit.cover,
  ),
),
Container(
  width: 1600,
    height: 700,
    decoration: BoxDecoration(
      color: Colors.white54,
      borderRadius: BorderRadius.all(Radius.circular(50.0))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("data"),
      ],
    ),
)

          ],
        )
      ),
    );
  }
}
