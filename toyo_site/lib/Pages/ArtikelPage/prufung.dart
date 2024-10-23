import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toyo_site/info.dart';

class PrufungPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Wer wir sind",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 100.0,
            left: 100.0,
            top: 20.0,
          ),
          child: Text(
            "Unser Team besteht aus erfahrenen Fachkräften, die sich auf den Verkauf, Einbau und die Reparatur von Toyota-Teilen spezialisiert haben.\nMit Leidenschaft und Expertise sorgen wir dafür, dass Ihr Fahrzeug in besten Händen ist und sicher auf der Straße bleibt.",
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
                'Voller Name der Person',
                'Hier könnte eine Beschreibung zu der Person vorliegen',
                "https://media.istockphoto.com/id/1495088043/de/vektor/benutzerprofil-symbol-avatar-oder-personensymbol-profilbild-portr%C3%A4tsymbol-standard.jpg?s=2048x2048&w=is&k=20&c=yc9IL77lY7xzXE-7Mf2Da9TCydWdgClBQLSiOG5itGw=",
              ),
              _containerBoxes(
                'Voller Name der Person',
                'Hier könnte eine Beschreibung zu der Person vorliegen',
                "https://media.istockphoto.com/id/1495088043/de/vektor/benutzerprofil-symbol-avatar-oder-personensymbol-profilbild-portr%C3%A4tsymbol-standard.jpg?s=2048x2048&w=is&k=20&c=yc9IL77lY7xzXE-7Mf2Da9TCydWdgClBQLSiOG5itGw=",
              ),
              _containerBoxes(
                'Voller Name der Person',
                'Hier könnte eine Beschreibung zu der Person vorliegen',
                "https://media.istockphoto.com/id/1495088043/de/vektor/benutzerprofil-symbol-avatar-oder-personensymbol-profilbild-portr%C3%A4tsymbol-standard.jpg?s=2048x2048&w=is&k=20&c=yc9IL77lY7xzXE-7Mf2Da9TCydWdgClBQLSiOG5itGw=",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _containerBoxes(
    String name,
    String description,
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
            top: 50.0,
            bottom: 50.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                ),
                child: Image.network(image,
                    width: 400, height: 400, fit: BoxFit.cover),
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
              Text(
                name,
                style: TextStyle(
                    color: WebColors().companyColor2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: TextStyle(
                  color: WebColors().companyColor2,
                  fontSize: 22,
                ),
              )
            ],
          )),
    );
  }
}
