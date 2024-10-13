import 'package:flutter/material.dart';

class MissionPage extends StatelessWidget {
  const MissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0),
      child: Column(
        children: [
          Container(width: 1400, height: 500,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(10),)
            ),
          ),
          Container(width: 1400, height: 400,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(10),)
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 60.0, right: 60.0, top: 50, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Was uns antreibt",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),),
                  SizedBox(height: 10,),
                  Text("Als Allgemeinmedizinerin bin ich davon überzeugt, dass eine gute Gesundheitsversorgung davon abhängt, dass ich meinen Patienten die bestmögliche\nBetreuung biete. Diese Einstellung treibt mich in meiner Arbeit an und gibt mir die Motivation, mich immer weiterzuentwickeln und zu lernen.\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: [
                      Text("Eines meiner wichtigsten Anliegen ist es, eine vertrauensvolle Beziehung\nzu meinen Patienten aufzubauen. Durch offene Kommunikation und das\nZuhören ihrer Anliegen kann ich ihre Gesundheitsbedürfnisse besser\nverstehen und individuelle Behandlungspläne erstellen.\n\nEin weiterer wichtiger Fokus meiner Arbeit liegt auf der Prävention von\nKrankheiten. Ich arbeite eng mit meinen Patienten zusammen, um ihren\nLebensstil und ihre Gesundheitsgewohnheiten zu verbessern und damit das\nRisiko von chronischen Erkrankungen zu verringern.",
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      Spacer(),
                      Text("Auch die Behandlung von chronischen Erkrankungen wie Diabetes und\nBluthochdruck gehört zu meinen Schwerpunkten. Durch regelmäßige\nÜberwachung und Anpassung der Behandlung kann ich dazu beitragen,\ndass sich meine Patienten besser fühlen und ihre Gesundheit verbessern.\n\nSchließlich liegt mir auch die Frauengesundheit besonders am Herzen. Ich\nbiete umfassende Betreuung von der Schwangerschaft bis hin zur\nMenopause und berate meine Patientinnen in allen Gesundheitsfragen, die\nsie beschäftigen.",
                      style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
