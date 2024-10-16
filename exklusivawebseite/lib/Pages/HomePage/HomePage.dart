import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
          ),
          child: Container(
            color: Colors.white,
            height: 70,
            child: Row(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                      color: Color.fromARGB(255, 99, 20, 20),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  children: [
                    Text(
                      "MMA",
                      style: TextStyle(
                          color: Color.fromARGB(255, 99, 20, 20),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 18),
                    Text("MUAY-THAI",
                        style: TextStyle(
                            color: Color.fromARGB(255, 99, 20, 20),
                            fontWeight: FontWeight.w600)),
                    SizedBox(width: 18),
                    Text("RINGEN",
                        style: TextStyle(
                            color: Color.fromARGB(255, 99, 20, 20),
                            fontWeight: FontWeight.w600)),
                    SizedBox(width: 18),
                    Text("KICKBOXEN",
                        style: TextStyle(
                            color: Color.fromARGB(255, 99, 20, 20),
                            fontWeight: FontWeight.w600)),
                    SizedBox(width: 18),
                    Text("Notfall",
                        style: TextStyle(
                            color: Color.fromARGB(255, 99, 20, 20),
                            fontWeight: FontWeight.w600)),
                    SizedBox(width: 18),
                    Text("Kontakt",
                        style: TextStyle(
                            color: Color.fromARGB(255, 99, 20, 20),
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const Spacer(),
                const SizedBox(width: 18),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 99, 20, 20))),
                    ),
                    child: const Text("Zum Warenkorb",
                        style: TextStyle(
                            color: Color.fromARGB(255, 99, 20, 20),
                            fontWeight: FontWeight.w600))),
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Image.network(
              "https://media.istockphoto.com/id/1301595548/de/foto/ärztin-stockfoto.jpg?s=2048x2048&w=is&k=20&c=zBaAro90bEKeX62Oc2XJpVSm3iz3YBRIdJEiBPdn8uA=",
              color: Colors.grey.shade200,
            ),
            SizedBox(
              width: 1272,
              height: 850,
              child: Row(children: [
                Container(
                  width: 636,
                ),
                SizedBox(
                  width: 636,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "EXKLUSIVA\nGmbH",
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 99, 20, 20)),
                      ),
                      const Text(
                        "Ihr Lokal für Kampfsport",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 99, 20, 20)),
                      ),
                      const Text(
                        "Zusammen stärker werden",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 99, 20, 20)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 99, 20, 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("Hier  Bewerben",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600))),
                      const SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: 1272,
              height: 1050,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                      elevation: 20,
                      child: Container(
                        height: 400,
                        width: 960,
                        color: Colors.white,
                        child: const Padding(
                          padding:
                              EdgeInsets.only(right: 38.0, left: 38.0, top: 20),
                          child: Column(
                            children: [
                              Center(
                                child: Text("Willkommen",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 99, 20, 20),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25.0),
                                child: Text(
                                  "Jeder Schlag, jeder Tritt bringt euch näher an euer Ziel. Im Training schärftihr nicht nur euren\n"
                                  "ihr nicht nur euren Körper, sondern auch euren Geist.\n\n"
                                  "Bleibt fokussiert, bleibt diszipliniert, und glaubt an eure Stärke.\n"
                                  "Euer Kampfgeist kennt keine Grenzen.\n"
                                  "Geht raus, gebt alles, und zeigt der Welt, was in euch steckt!",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 30.0,
                                  left: 120.0,
                                  right: 120.0,
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.bolt,
                                          size: 50,
                                          color:
                                              Color.fromARGB(255, 99, 20, 20),
                                        ),
                                        Text(
                                          "Stabile\nAusrüstungen",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 99, 20, 20)),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Icon(
                                          CupertinoIcons.clock_fill,
                                          size: 50,
                                          color:
                                              Color.fromARGB(255, 99, 20, 20),
                                        ),
                                        Text(
                                          "Langanhaltende\nArtikel",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 99, 20, 20)),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.star_rate,
                                          size: 50,
                                          color:
                                              Color.fromARGB(255, 99, 20, 20),
                                        ),
                                        Text(
                                          "Garantierte\nZufriedenheit",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 99, 20, 20)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
