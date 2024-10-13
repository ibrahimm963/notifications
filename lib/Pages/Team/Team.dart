import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Unser Team",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 20.0,),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(width: 250, height: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
                      ),
                      child: Icon(Icons.account_circle, size: 150,),
                    ),
                    Container(width: 250, height: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                        child: Center(child: Column(
                          children: [
                            Text("Dr. Soufian El-Fouzari"),
                            Spacer(),
                            Text("Facharzt für Allgemeinmedizin"),
                          ],
                        )),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(width: 250, height: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
                      ),
                      child: Icon(Icons.account_circle, size: 150,),
                    ),
                    Container(width: 250, height: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                        child: Center(child: Column(
                          children: [
                            Text("Dr. Omar Almoazen"),
                            Spacer(),
                            Text("Facharzt für Füße"),
                          ],
                        )),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(width: 250, height: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
                      ),
                      child: Icon(Icons.account_circle, size: 150,),
                    ),
                    Container(width: 250, height: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                        child: Center(child: Column(
                          children: [
                            Text("Dr. Syfullah"),
                            Spacer(),
                            Text("Facharzt für Kinder"),
                          ],
                        )),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(width: 250, height: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
                      ),
                      child: Icon(Icons.account_circle, size: 150,),
                    ),
                    Container(width: 250, height: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                        child: Center(child: Column(
                          children: [
                            Text("Dr. Ibrahim Muhammad"),
                            Spacer(),
                            Text("Facharzt für Omar"),
                          ],
                        )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
