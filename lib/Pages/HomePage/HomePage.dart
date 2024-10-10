import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0,),
          child: Container(
            height: 70,
            child: Row(
              children: [
                Text("Dr. Soufian El-Fouzari"),
                Spacer(),
                Row(
                  children: [
                    Text("Praxis",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),),
                    Text("Termin"),
                    Text("Leistungen"),
                    Text("Team"),
                    Text("Notfall"),
                    Text("Kontakt"),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text("DE|EN")
                  ],
                ),
                Container(
                  child: Text("Werde Teil des Teams"),
                )
              ],
            ),
          ),
        )
    ],
    ),
      );
  }
}