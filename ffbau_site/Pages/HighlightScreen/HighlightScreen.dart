import 'package:flutter/material.dart';
import 'package:ffbau_site/info.dart';

class HighlightsPage extends StatefulWidget {
  const HighlightsPage({super.key});

  @override
  State<HighlightsPage> createState() => _HighlightsPageState();
}

class _HighlightsPageState extends State<HighlightsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0, bottom: 55),
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Für eine nachhaltige und\ninnovative Mobilität von morgen",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: WebColors().companyColor2
                  ),),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 633, height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ihre Bewertungen",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),),
                      Row(
                        children: [
                          Icon(Icons.account_circle,
                          size: 70,
                          color: WebColors().companyColor2,),
                        
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Soufian El-fouzari", 
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),  
                                ),
                                Text("Kunde seit 2018")
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: WebColors().companyColor2,),
                                Icon(Icons.star, color: WebColors().companyColor2,),
                                Icon(Icons.star, color: WebColors().companyColor2,),
                                Icon(Icons.star, color: WebColors().companyColor2,),
                                Icon(Icons.star, color: WebColors().companyColor1,),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Text("Ich habe kürzlich mein Auto in der Toyo-Schmiede zur Inspektion gebracht und war rundum zufrieden. Der Service war äußerst professionell und kundenorientiert. Die Mitarbeiter haben alle notwendigen Reparaturen und Wartungsarbeiten klar und verständlich erklärt, sodass selbst technische Details leicht nachvollziehbar waren. Besonders positiv fand ich die Transparenz und die zügige Abwicklung der Arbeiten. Mein Auto läuft jetzt wieder einwandfrei, und ich habe ein gutes Gefühl der Sicherheit auf der Straße. Die Toyo-Schmiede ist definitiv eine Werkstatt, die man weiterempfehlen kann!"),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.circle, color: WebColors().companyColor2,),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text("Professioneller Service", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                                                        Row(
                              children: [
                                Icon(Icons.circle, color: WebColors().companyColor2,),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text("Transparente Beratung", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                                                        Row(
                              children: [
                                Icon(Icons.circle, color: WebColors().companyColor2,),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text("Schnelle Abwicklung", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(left: 28.0),
                   child: SizedBox(width: 633, height: 600,
                     child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          "https://media.istockphoto.com/id/830545882/de/foto/rad-ausrichtung.jpg?s=2048x2048&w=is&k=20&c=kGe1gveBvCcfXZ7ZAYNS7pMO05AxX6DZ20o2MAMC4dI=",
                          fit: BoxFit.cover, // Das Bild füllt den Container aus
                        ),
                      ),
                   ),
                 ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                       padding: const EdgeInsets.only(left: 28.0),
                       child: SizedBox(width: 420, height: 260,
                         child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              "https://media.istockphoto.com/id/1132190559/de/foto/toyota-logo-auf-hybridmotor.jpg?s=2048x2048&w=is&k=20&c=kDHOIkkFSSXoHxWWCa0o87n3WQISenY8FIyx2oPDViM=",
                              fit: BoxFit.cover, // Das Bild füllt den Container aus
                            ),
                          ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 35.0, top: 20, bottom: 20),
                       child: Text("Video Highlight", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w800),),
                     ),

                     SizedBox(
                      width: 350,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 41.0),
                         child: Text("In diesem Video zur Umweltschulung erfahren die Zuschauer, wie sie durch einfache Maßnahmen aktiv zum Schutz unserer Umwelt beitragen können. Der Inhalt des Videos vermittelt praxisnahe Tipps und erklärt anschaulich, wie jeder Einzelne im Alltag einen positiven Beitrag leisten kann."),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.all(28.0),
                       child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                         child: Container(
                                width: 295,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 202, 196, 196).withOpacity(0),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: WebColors().companyColor2, width: 2),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Spacer(),
                                      Icon(
                                        Icons.video_label,
                                        color: WebColors().companyColor2,
                                      ),
                                      Spacer(),
                                      Text(
                                        "Alle Videos Ansehen",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.video_label,
                                        color: WebColors().companyColor2,
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                       ),
                     ),
                  ],
                ),
              ],
            ),
          ],
        ),
    );
  }
}