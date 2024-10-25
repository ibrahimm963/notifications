import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ffbau_site/info.dart';

class BeratungPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Beratung",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 100.0,
            left: 100.0,
            top: 20.0,
          ),
          child: Text(
            "Unsere erfahrenen Berater helfen Ihnen, die richtigen Entscheidungen in den Bereichen Strategie, Technologie und Innovation zu treffen.\nWählen Sie die beste Beratungsoption für Ihr Unternehmen.",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: WebColors().companyColor2),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _containerBoxes(
                  Icons.trending_up,
                  'Strategieberatung',
                  '- Entwicklung klarer Strategien für nachhaltigen Erfolg.\n- Unterstützung bei der Umsetzung langfristiger Ziele.',
                  "20 €",
                  "https://media.istockphoto.com/id/1705145695/de/foto/team-geschäftsleute-oder-ein-buchhalterteam-analysieren-datendiagramme-grafiken-und-ein.jpg?s=2048x2048&w=is&k=20&c=0PUA5kXEoWCbSH7P0a1ZN2y6ujiCkQvn_eqMvWVCP7E="),
              _containerBoxes(
                  Icons.computer,
                  'Technologieberatung',
                  '- Unterstützung bei technischen Herausforderungen.\n- Beratung zu effektiven IT-Strategien.',
                  "36 €",
                  "https://media.istockphoto.com/id/1322517295/de/foto/cyber-sicherheits-it-ingenieur-arbeitet-am-schutz-des-netzwerks-vor-cyberangriffen-durch.jpg?s=2048x2048&w=is&k=20&c=sqbu3BT6-rIrTtQM40YEF4WOpKog9VZWq8ucDqREHHY="),
              _containerBoxes(
                  Icons.lightbulb,
                  'Innovationsberatung',
                  '- Entwicklung innovativer Lösungen für Ihr Unternehmen.\n- Strategien zur Zukunftssicherung Ihres Unternehmens.',
                  "60 €",
                  "https://media.istockphoto.com/id/1132789081/de/foto/viele-menschen-zusammen-haben-eine-idee-die-durch-ikonen-auf-würfeln-symbolisiert-wird.jpg?s=2048x2048&w=is&k=20&c=39x5zZD3deLIJX-dnfvKl5l8PtKVJmUCLGk4VkpHtpE="),
            ],
          ),
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
      width: 500,
      decoration: BoxDecoration(
          color: Color(0xFFE3E3E3),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.black, width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 38.0,
          right: 38.0,
          top: 80.0,
          bottom: 80.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: WebColors().companyColor2,
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Icon(
                          icondata,
                          size: 40,
                          color: Colors.white,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      child: Text("Gebühren",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                    Text(
                      info,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Image.network(
                    image,
                    width: 280,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 30.0,
              ),
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
            Text(title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 50.0,
              ),
              child: Text(content,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, height: 2)),
            ),
            Spacer(),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                    color: WebColors().companyColor2,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.3,
                    )),
                child: Center(
                  child: Text(
                    "Zum Angebot",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
