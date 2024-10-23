import 'package:flutter/material.dart';
import 'package:toyo_site/Pages/ArtikelPage/prufung.dart';
import 'package:toyo_site/Pages/ArtikelPage/schulung.dart';
import 'package:toyo_site/info.dart'; // Assuming WebColors is defined here.
import 'beratung.dart'; // Import your separa

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({super.key});

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  // List of pages corresponding to the buttons
  List<Widget> screens = [
    PrufungPage(),
    BeratungPage(),
    SchulungPage(),
  ];

  // To track the currently selected category
  int current = 0;

  // Method to change the screen
  void changeScreen(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              bottom: 10.0,
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 205.0, left: 205.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _kategorieButton("Team", 210, 40, 0),
                  _kategorieButton("Vorstellung", 210, 40, 1),
                  _kategorieButton("Termin", 210, 40, 2),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          // Display the selected screen
          screens[current],
        ],
      ),
    );
  }

  // Widget for the buttons that change content and style when selected
  Widget _kategorieButton(
      String kategorie, double width, double height, int index) {
    bool isSelected = current == index; // Check if the button is selected
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          changeScreen(index); // Change to the respective screen when tapped
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: isSelected
                  ? WebColors().companyColor1 // Change color if selected
                  : WebColors().companyColor3.withOpacity(0),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: WebColors().companyColor2, width: 2),
            ),
            child: Center(
              child: Text(
                kategorie,
                style: TextStyle(
                  color: isSelected
                      ? WebColors()
                          .companyColor3 // Change text color when selected
                      : WebColors().companyColor2,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
