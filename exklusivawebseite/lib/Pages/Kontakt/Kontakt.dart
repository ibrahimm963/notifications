import 'package:flutter/material.dart';

class KontaktPage extends StatelessWidget {
  const KontaktPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "So erreichen Sie uns",
            style: TextStyle(
                color: Color.fromARGB(255, 99, 20, 20),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18.0,
              left: 8.0,
              right: 18.0,
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 50,
                      color: Color.fromARGB(255, 99, 20, 20),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Telefon",
                          style: TextStyle(
                              color: Color.fromARGB(255, 99, 20, 20),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "0123456789",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      size: 50,
                      color: Color.fromARGB(255, 99, 20, 20),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E-Mail",
                          style: TextStyle(
                              color: Color.fromARGB(255, 99, 20, 20),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "soufian@programmiern.de",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.facebook_outlined,
                      size: 50,
                      color: Color.fromARGB(255, 99, 20, 20),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Unser Kanal",
                          style: TextStyle(
                              color: Color.fromARGB(255, 99, 20, 20),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Exklusiva.kassel",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 50,
                      color: Color.fromARGB(255, 99, 20, 20),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Unser Lokal",
                          style: TextStyle(
                              color: Color.fromARGB(255, 99, 20, 20),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Jägerstr. 8 34555 Ostzwer",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(40.0),
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      "* Greifen Sie schnell zu! Alle angegebenen Preise in Euro und inklusive der gesetzlichen Mehrwertsteuer. Irrtümer durch Schreib-, Programmier- und Datenübertragungsfehler sind vorbehalten.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 99, 20, 20),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    "Copyright © 2024 by EXKLUSIVA GmbH Co. KG",
                    style: TextStyle(
                      color: Color.fromARGB(255, 99, 20, 20),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
