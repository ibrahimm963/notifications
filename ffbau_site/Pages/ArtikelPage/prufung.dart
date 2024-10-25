import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ffbau_site/info.dart';

class PrufungPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Prüfung",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 100.0,
            left: 100.0,
            top: 20.0,
          ),
          child: Text(
            "Unsere erfahrenen Fachkräfte unterstützen Sie dabei, Sicherheits- und Funktionsprüfungen von Betriebsmitteln und Anlagen zuverlässig durchzuführen. Wählen Sie die passende Lösung für die Sicherheit und Effizienz Ihrer Anlagen.",
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
                  Icons.safety_check,
                  'Sicherheitsprüfung',
                  '- Durchführung von Sicherheitsinspektionen gemäß gesetzlichen Vorgaben.\n- Gewährleistung der Betriebssicherheit durch Einhaltung von Normen.',
                  "30 €",
                  "https://media.istockphoto.com/id/1128252197/de/foto/hautnah-beobachten.jpg?s=2048x2048&w=is&k=20&c=h11C5y_lqVagMrd7FBMYE6mb36a9z8oiCxamUYuJZB4="),
              _containerBoxes(
                  Icons.engineering_outlined,
                  'Anlagenprüfung',
                  '- Überprüfung der Funktionalität von Maschinen und Anlagen.\n- Sicherstellung der Effizienz für einen reibungslosen Betriebsablauf.',
                  "22 €",
                  "https://media.istockphoto.com/id/1130307955/de/foto/dienstleistungen-auto-motor-maschinenkonzept-auto-mechaniker-mechaniker-überprüft-einen.jpg?s=2048x2048&w=is&k=20&c=Mm7hXtcV3knRb5D6bMgM6mDKDLzh6ZfXRFiB3xkmIGA="),
              _containerBoxes(
                  Icons.school,
                  'Schulungen',
                  '- Praktische Schulungen zur Vermittlung der richtigen Verfahren.\n- Techniken zur Durchführung von Sicherheits- und Funktionsprüfungen.',
                  "? €",
                  "https://media.istockphoto.com/id/1394389255/de/foto/rückansicht-von-personen-während-des-seminars.jpg?s=2048x2048&w=is&k=20&c=WfezzvUBr7H-zEYRjXN4EgLrk6UkjPxNrrY9Xm2_cHY="),
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
