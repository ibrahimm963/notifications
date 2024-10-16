import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(height: 230, color: Color.fromARGB(255, 215, 177, 185),),
              Container(height: 510, color: const Color.fromARGB(255, 0, 80, 146),),
          ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 100.0, right: 100.0,),
            child: Column(
              children: [
                Row(
                  children: [
                    _containerInhalt("UNSER HAUPTBÜRO", "Soufianstr. 187", Icons.location_on),
                    const Spacer(),
                    _containerInhalt("TELEFONNUMMER", "043-3254-3245\n908-3894-2344", Icons.phone),
                    const Spacer(),
                    _containerInhalt("FAX", "1-793-324-8934", Icons.fax),
                    const Spacer(),
                    _containerInhalt("EMAIL", "soufianffbau@ekfjs.com", Icons.mail),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, left: 35.0, right: 35.0,),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 544, 
                        height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("IN KONTAKT KOMMEN",
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                            Spacer(),
                            Text("TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),),
                            Spacer(),
                            Text("TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              color: Colors.white
                            ),),
                            Spacer(),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(Icons.facebook, size: 40, color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(Icons.facebook, size: 40, color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(Icons.facebook, size: 40, color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(Icons.facebook, size: 40, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 170,),
                      SizedBox(
                        width: 544, 
                        height: 380,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Email",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              height: 0.001
                            ),),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: "  Enter a valid email adress", 
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                alignLabelWithHint: true,
                                fillColor: Colors.white,
                                hoverColor: Colors.white,
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 215, 177, 185),
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                ),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                              ),
                            ),
                            const Spacer(),
                            const Text("Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              height: 0.001
                            ),),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: "  Enter your name", 
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                alignLabelWithHint: true,
                                fillColor: Colors.white,
                                hoverColor: Colors.white,
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 215, 177, 185),
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                ),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                              ),
                            ),
                            const Spacer(),
                            const Text("Message",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              height: 0.001
                            ),),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: "  Enter your message", 
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                alignLabelWithHint: true,
                                fillColor: Colors.white,
                                hoverColor: Colors.white,
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 215, 177, 185),
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Container(width: 544, height: 1, color: Colors.white,),
                            ),
                            Container(
                              width: 544, height: 50, color: Colors.white,
                              child: const Center(
                                child: Text("EINREICHEN"),
                              ),
                            ),
                          ],
                        ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _containerInhalt(
    String name,
    String beschreibung,
    IconData iconc,
  ) {
    return Container(
      width: 250, height: 250, color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Icon(iconc, size: 90, color: const Color.fromARGB(255, 0, 80, 146),),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 13.0,),
                child: Text(name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Text(beschreibung),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
