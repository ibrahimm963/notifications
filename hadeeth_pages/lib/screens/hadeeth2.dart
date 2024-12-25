import 'package:flutter/material.dart';
import 'package:hadeeth_pages/screens/hadeeth1.dart';
import 'package:hadeeth_pages/screens/hadeeth3.dart';

class Hadeeth2 extends StatelessWidget {
  static const route = "/hadeeth2";
  const Hadeeth2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hadeeth1()));
                },
                icon: Icon(Icons.arrow_back)),
            Spacer(),
            Column(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "⚜️",
                          style: TextStyle(
                              color: Color.fromARGB(255, 235, 235, 126),
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 65,
                        ),
                        Text(
                          "إِنَّ اللَّهَ يَغَارُ وَغَيْرَةُ اللهِ أَنْ يَأْتِيَ الْمُؤْمِنُ مَا حَرَّمَ اللهُ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 65,
                        ),
                        Text(
                          "⚜️",
                          style: TextStyle(
                              color: Color.fromARGB(255, 235, 235, 126),
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hadeeth3()));
                },
                icon: Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}
