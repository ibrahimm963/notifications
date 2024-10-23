import 'package:flutter/material.dart';
import 'package:toyo_site/info.dart';

class Kategorien extends StatefulWidget {
  const Kategorien({super.key});

  @override
  State<Kategorien> createState() => _KategorienState();
}

class _KategorienState extends State<Kategorien> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text("Entdecken Sie die Toyo-Schmiede",
                style: TextStyle(fontSize: 50, color: WebColors().companyColor2, fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                  Spacer(),
                  _startCreatingButton(
                    "Wartung und Inspektionen", 
                    "https://media.istockphoto.com/id/1222944373/de/foto/auto-reparatur-arbeiter-arbeiten-auf-digitalen-tablet-in-einer-werkstatt.jpg?s=2048x2048&w=is&k=20&c=TK_8rFEdB6l4AUy6frwEuLeJa9DLd3d8TjDQMaiKFkY=",
                    "In diesem Textabbschnitt könnte eine Beschreibung oder eine beliebige Erklärung zu ihren Wartungen und Inspektionen vorliegen.",
                    Icon(Icons.timer, color: WebColors().companyColor3,),
                  ),
                  Spacer(),
                  _startCreatingButton(
                    "Verkauf von Original Toyota-Ersatzteilen", 
                    "https://media.istockphoto.com/id/1623226540/de/foto/blauer-toyota-gr86-auf-einer-autoshow.jpg?s=2048x2048&w=is&k=20&c=Gc77QASh0N0174Cza5dMOs_BVaev9BuPfaUB4XnRLFg=",
                    "In diesem Textabbschnitt könnte eine Beschreibung oder eine beliebige Erklärung zu ihrem Verkauf von Original Toyota-Ersatzteilen vorliegen.",
                    Icon(Icons.sell, color: WebColors().companyColor3,),
                  ),
                  Spacer(),
                  _startCreatingButton(
                    "Einbau von Original Toyota-Ersatzteilen", 
                    "https://media.istockphoto.com/id/1811053911/de/foto/junger-mann-tunt-sein-altes-auto-am-nachmittag-nach-der-arbeit.jpg?s=2048x2048&w=is&k=20&c=YXTyzlBeHGRWutjJPgCsBH9lLBFQDbxcley8akMygZQ=",
                    "In diesem Textabbschnitt könnte eine Beschreibung oder eine beliebige Erklärung zu ihrem Einbau von Original Toyota-Ersatzteilen vorliegen.",
                    Icon(Icons.engineering_outlined, color: WebColors().companyColor3,),
                  ),
                  Spacer(),
                  _startCreatingButton(
                    "Unser Team", 
                    "https://raw.githubusercontent.com/SoufianElfouzari/website_pictures/refs/heads/main/toyo/WhatsApp%20Image%202024-10-23%20at%2010.20.15.jpeg",
                    "In diesem Textabbschnitt könnte eine Beschreibung oder eine beliebige Erklärung zu ihrer Reparaturen und Karosseriearbeiten vorliegen.",
                    Icon(Icons.group_outlined, color: WebColors().companyColor3,),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _startCreatingButton(String name, String image, String description, Icon icon) {
  return Column(
          children: [
            SizedBox(
              width: 450,
              height: 590,
              child: Stack(
                children: [
                  
                  SizedBox(
                    width: 475,
                    height: 600,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        image,
                        fit: BoxFit.cover, // Das Bild füllt den Container aus
                        alignment: Alignment(0.4, 0), // Bildinhalt zwischen Mitte und rechts
                      ),
                    ),
                  ),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                              width: 255,
                              height: 40,
                              decoration: BoxDecoration(
                                color: WebColors().companyColor3.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: WebColors().companyColor3, width: 2),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Spacer(),
                                    Icon(
                                      Icons.unfold_less_double_sharp,
                                      color: WebColors().companyColor2,
                                    ),
                                    Spacer(),
                                    Text(
                                      "Beispiel Angebot",
                                      style: TextStyle(
                                        color: WebColors().companyColor1,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.unfold_less_double_sharp,
                                      color: WebColors().companyColor2,
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox( width: 420,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 30, height: 30,
                            child: icon,
                            decoration: BoxDecoration(
                              color: WebColors().companyColor1,
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 400,
                            height: 100,
                            child: Text(description,
                            style: TextStyle(
                              fontSize: 16,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
}

}