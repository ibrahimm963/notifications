import 'package:flutter/material.dart';
import 'package:hadeeth_pages/screens/hadeeth2.dart';
import 'package:hadeeth_pages/screens/hadeeth6.dart';

class Hadeeth1 extends StatelessWidget {
  static const route = "/hadeeth1";
  const Hadeeth1({super.key});

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
                      MaterialPageRoute(builder: (context) => Hadeeth6()));
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
                          "كَلِمَتَانِ خَفِيفَتَانِ عَلَى اللِّسَانِ، ثَقِيلَتَانِ فِي الْمِيزَانِ،"
                          "\nحَبِيبَتَانِ إِلَى الرَّحْمَنِ:(سُبْحانَ اللهِ الْعَظِيمِ)"
                          "\n(سُبْحَانَ اللهِ وَبِحَمْدِهِ)",
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
                      MaterialPageRoute(builder: (context) => Hadeeth2()));
                },
                icon: Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}
