import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KontaktPage extends StatelessWidget {
  const KontaktPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("So erreichen Sie uns",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 8.0, right: 18.0,),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.phone,
                    size: 50, color: Colors.blueAccent,),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Telefon",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("xxx-xxxx-xxxx-xxx",
                        style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),)
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.mail,
                      size: 50, color: Colors.blueAccent,),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("E-Mail",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold
                          ),),
                        Text("soufianelfouzari@doctormail.de",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),)
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.calendar_month,
                      size: 50, color: Colors.blueAccent,),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Termin",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold
                          ),),
                        Text("hier vereinbaren",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),)
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(CupertinoIcons.chat_bubble_2_fill,
                      size: 50, color: Colors.blueAccent,),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sprechzeiten",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Übersicht",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),)
                      ],
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
