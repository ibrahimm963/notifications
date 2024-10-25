import 'package:flutter/material.dart';
import 'package:ffbau_site/info.dart';
import 'package:table_calendar/table_calendar.dart';

class SchulungPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Schulung",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 100.0,
            left: 100.0,
            top: 20.0,
          ),
          child: Text(
            "Unsere erfahrenen Schulungsleiter unterstützen Sie dabei, fachbezogene Ausbildungen, BGW Unternehmerschulungen und SCC-Schulungen mit Prüfung erfolgreich zu absolvieren. Wählen Sie das passende Schulungsangebot für die Weiterbildung in Ihrem Unternehmen.",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 1000,
                    height: 520,
                    child: TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                    ),
                  ),
                  Container(
                    width: 1000,
                    height: 520,
                    child: TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                    ),
                  ),
                  Container(
                    width: 1000,
                    height: 520,
                    child: TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      _containerBoxes(
                          Icons.school,
                          "Fachbezogene Ausbildung",
                          "- Praxisnahe Schulungen für Mitarbeiter\n- Theorie und Praxis im Einklang",
                          "1 Jahr"),
                      _containerBoxes(
                          Icons.school,
                          "Fachbezogene Weiterbildung",
                          "- Vertiefung bestehender Kenntnisse\n- Aktuelle Trends und Entwicklungen",
                          "3-6 Monate")
                    ],
                  ),
                  Row(
                    children: [
                      _containerBoxes(
                          Icons.school,
                          "BGW Unternehmerschulungen",
                          "- Sicherheitsvorschriften für Unternehmer\n- Risikoerkennung und -management",
                          "2 Tage"),
                      _containerBoxes(
                          Icons.school,
                          "SCC-Schulungen",
                          "- Vorbereitung auf SCC-Prüfungen\n- Praxisnahe Sicherheitstrainings",
                          "3 Tage")
                    ],
                  ),
                  Row(
                    children: [
                      _containerBoxes(
                          Icons.school,
                          "Soft Skills Training",
                          "- Kommunikation und Teamarbeit stärken\n- Konfliktmanagement und Problemlösung",
                          "1 bis 2 Tage"),
                      _containerBoxes(
                          Icons.school,
                          "Digitale Schulungen",
                          "- Online-Module für Flexibilität\n- Zugriff auf aktuelle Schulungsmaterialien",
                          "Flexibel")
                    ],
                  ),
                ],
              )
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
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20.0,
        bottom: 20.0,
      ),
      child: Container(
        height: 520,
        width: 375,
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
              Row(
                children: [
                  Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: WebColors().companyColor2,
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                      child: Icon(
                        icondata,
                        size: 36,
                        color: Colors.white,
                      )),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dauer",
                          style: TextStyle(
                            fontSize: 18,
                          )),
                      Text(
                        info,
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  bottom: 25.0,
                ),
                child: Container(
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Text(title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 20.0,
                ),
                child: Text(content,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, height: 2)),
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
      ),
    );
  }
}
