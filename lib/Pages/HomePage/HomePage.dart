import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0,),
            child: Container(
              color: Colors.white,
              height: 70,
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.public_sharp,
                      size: 50, color: Colors.blueAccent,),
                      Text("Dr. Soufian\nEl-Fouzari",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text("Praxis",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600
                        ),),
                      SizedBox(width: 18),
                      Text("Termin",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600
                          )),
                      SizedBox(width: 18),
                      Text("Leistungen",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600
                          )),
                      SizedBox(width: 18),
                      Text("Team",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600
                          )),
                      SizedBox(width: 18),
                      Text("Notfall",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600
                          )),
                      SizedBox(width: 18),
                      Text("Kontakt",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600
                          )),
                    ],
                  ),
                  Spacer(),
                      Text("DE | EN",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600
                          )),
                  SizedBox(width: 18),
                  ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 2, color: Colors.blueAccent
                          )
                        ),
                      ),
                      child: Text("Werde Teil des Teams",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600
                          ))
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Image.network("https://media.istockphoto.com/id/1301595548/de/foto/ärztin-stockfoto.jpg?s=2048x2048&w=is&k=20&c=zBaAro90bEKeX62Oc2XJpVSm3iz3YBRIdJEiBPdn8uA=",
              color: Colors.grey.shade200,),
              Container(
                width: 1272, height: 850,
                child: Row(
                  children: [
                    Container(width: 636,),
                    Container(width: 636,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dr. Soufian El-Fouzari\nAkhi Al Karim",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent
                        ),),
                        Text("Facharzt der Allgemeinmedizin",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                          ),),
                        Text("Ihre Gesundheit on besten Händern",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                          ),),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text("Termin vereinbaren",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ))
                        ),
                        SizedBox(height: 150,)
                      ],
                      ),
                    ),
                  ]
                ),
              ),
              Container(width: 1272, height: 1050,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Material(
                        elevation: 20,
                          child: Container(
                            height: 400, width: 960, color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 38.0, left: 38.0, top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text("Willkommen",
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.w600,
                                          fontSize: 30,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: Text("Wir bieten unseren Patienten eine hochwertige Gesundheitsversorgung. Unser\n"
                                        "Team aus erfahrenen Ärzten und Mitarbeitern ist für alle Ihre medizinischen\n"
                                        "Bedürfnisse und Anliegen da.\n\n"
                                        "In einer warmen und einladenden Umgebung möchten wir Ihre Betreuung so\n"
                                        "angenehm und effizient wie möglich zu gestalten. Wir freuen uns auf Ihren Besuch.",
                                    style: TextStyle(
                                      fontSize: 17
                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30.0 ,left: 120.0, right: 120.0,),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(CupertinoIcons.clock_fill,
                                            size: 50, color: Colors.blueAccent,),
                                            Text("Kurze\nWartezeiten",
                                            style: TextStyle(
                                              color: Colors.blueAccent
                                            ),)
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Icon(CupertinoIcons.videocam_fill,
                                              size: 50, color: Colors.blueAccent,),
                                            Text("In der Praxis\noder per Video",
                                              style: TextStyle(
                                                  color: Colors.blueAccent
                                              ),)
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Icon(CupertinoIcons.circle,
                                              size: 50, color: Colors.blueAccent,),
                                            Text("Ganzheitliche\nBehandlung",
                                              style: TextStyle(
                                                  color: Colors.blueAccent
                                              ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),

            ],
          )
        ],
      );
  }
}