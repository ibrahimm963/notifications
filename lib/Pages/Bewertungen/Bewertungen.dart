import 'package:flutter/material.dart';

class BewertungenPage extends StatelessWidget {
  const BewertungenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Bewertung unserer Patienten",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 20.0,),
            child: Row(
              children: [
                Container(width: 250, height: 456,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, left: 15.0, right: 15.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Andreas Müller",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                          Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                          Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                          Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                          Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Text("Ich habe vor kurzem die Praxis\nvon Frau Dr. Stellenberger\nbesucht und war sehr\nbeeindruckt von der Sorgfalt\nund Aufmerksamkeit. Von dem\nMoment an, als ich zur Tür\nhereinkam, war das Personal\nfreundlich und\nzuvorkommend, und Frau Dr.\nStellenberger nahm sich die\nZeit, sich alle meine Anliegen\nanzuhören und alle meine\nFragen zu beantworten. Die\ngesamte Erfahrung war\neffizient und stressfrei.\n")
                    ],
                  ),
                )
                ),
                Spacer(),
                Container(width: 250, height: 456,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, left: 15.0, right: 15.0,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Thomas Berg",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Text("Ich habe vor kurzem die Praxis\nvon Frau Dr. Stellenberger\nbesucht und war sehr\nbeeindruckt von der Sorgfalt\nund Aufmerksamkeit. Von dem\nMoment an, als ich zur Tür\nhereinkam, war das Personal\nfreundlich und\nzuvorkommend, und Frau Dr.\nStellenberger nahm sich die\nZeit, sich alle meine Anliegen\nanzuhören und alle meine\nFragen zu beantworten. Die\ngesamte Erfahrung war\neffizient und stressfrei.\n")
                        ],
                      ),
                    )
                ),
                Spacer(),
                Container(width: 250, height: 456,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, left: 15.0, right: 15.0,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lisa Schmitz",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Text("Ich habe vor kurzem die Praxis\nvon Frau Dr. Stellenberger\nbesucht und war sehr\nbeeindruckt von der Sorgfalt\nund Aufmerksamkeit. Von dem\nMoment an, als ich zur Tür\nhereinkam, war das Personal\nfreundlich und\nzuvorkommend, und Frau Dr.\nStellenberger nahm sich die\nZeit, sich alle meine Anliegen\nanzuhören und alle meine\nFragen zu beantworten. Die\ngesamte Erfahrung war\neffizient und stressfrei.\n")
                        ],
                      ),
                    )
                ),
                Spacer(),
                Container(width: 250, height: 456,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, left: 15.0, right: 15.0,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Valentina Friedrich",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                              Icon(Icons.star, color: Colors.blueAccent, size: 30,),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Text("Ich habe vor kurzem die Praxis\nvon Frau Dr. Stellenberger\nbesucht und war sehr\nbeeindruckt von der Sorgfalt\nund Aufmerksamkeit. Von dem\nMoment an, als ich zur Tür\nhereinkam, war das Personal\nfreundlich und\nzuvorkommend, und Frau Dr.\nStellenberger nahm sich die\nZeit, sich alle meine Anliegen\nanzuhören und alle meine\nFragen zu beantworten. Die\ngesamte Erfahrung war\neffizient und stressfrei.\n")
                        ],
                      ),
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
