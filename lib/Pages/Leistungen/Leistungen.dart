import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeistungenPage extends StatelessWidget {
  const LeistungenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Unsere Leistungen für Sie",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container( width: 1400, height: 400,
              child: Card(
                color: Colors.blueAccent,
                child: Row(
                  children: [
                    SizedBox(width: 250,
                    child: Column(
                      children: [
                        SizedBox(height: 76.8, width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Text("Hausärtzliche Versorgung",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),),
                              )
                            ]
                        ),
                        ),
                        Container(width: 250, height: 2, color: Colors.white,),
                        Container(height: 76.8, width: 250, color: Colors.white70,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Text("Impfungen & Reise",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                )
                              ]
                          ),
                        ),
                        Container(width: 250, height: 2, color: Colors.white,),
                        SizedBox(height: 76.8, width: 250,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Text("Chronische Erkrankungen",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                )
                              ]
                          ),
                        ),
                        Container(width: 250, height: 2, color: Colors.white,),
                        SizedBox(height: 76.8, width: 250,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Text("Covid-19",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                )
                              ]
                          ),
                        ),
                        Container(width: 250, height: 2, color: Colors.white,),
                        SizedBox(height: 76.8, width: 250,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Text("Vorsorge & Alter",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                )
                              ]
                          ),
                        ),
                      ],
                    ),),
                    Container(width: 2, height: 400, color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 50.0,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Impfungen & Reise",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 10,),
                          Text("Reiseimpfungen können Sie vor schweren und potenziell lebensbedrohlichen Krankheiten schützen, die in\nbestimmten Teilen der Welt weit verbreitet sind. Sie können auch die Gemeinschaften, die Sie besuchen, vor der\nmöglichen Verbreitung dieser Krankheiten schützen.\n\nGesundheitsschutz: Reiseimpfungen können verhindern, dass Sie auf Reisen ernsthaft krank werden. Impfungen\nkönnen Sie beispielsweise vor Krankheiten wie Gelbfieber, Hepatitis A und B, Typhus und Tollwut schützen.\n\nEinhaltung der Einreisebestimmungen: Einige Länder haben Einreisebestimmungen, die den Nachweis bestimmter\nImpfungen vorschreiben. Wenn Sie nicht im Besitz der erforderlichen Impfung sind, kann Ihnen die Einreise\nverweigert werden.\n\nSchutz der Gemeinden: Reiseimpfungen können auch dazu beitragen, die Gemeinden, die Sie besuchen, vor der\nVerbreitung von Krankheiten zu schützen. Wenn Sie sich impfen lassen, können Sie dazu beitragen, die Ausbreitung\nder Krankheit auf diese gefährdeten Bevölkerungsgruppen zu verhindern.",
                          style: TextStyle(
                            color: Colors.white
                          ),),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text("Termin vereinbaren",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w600
                                  ))
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
