import 'package:flutter/material.dart';
import 'package:toyo_site/info.dart';
import 'package:table_calendar/table_calendar.dart';

class SchulungPage extends StatefulWidget {
  @override
  State<SchulungPage> createState() => _SchulungPageState();
}

class _SchulungPageState extends State<SchulungPage> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Termin vereinbaren",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 100.0,
            left: 100.0,
            top: 20.0,
          ),
          child: Text(
            "Vereinbaren Sie einen Termin in unserer Werkstatt für den Kauf von originalen Toyota-Autoteilen, den professionellen Einbau oder Reparaturen.\nFachgerechter Service speziell für Toyota-Fahrzeuge!",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: WebColors().companyColor2),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 1000,
                height: 345,
                child: Column(
                  children: [
                    Container(
                      child: TableCalendar(
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                      ),
                    ),
                  ],
                ),
              ),
              _containerBoxes(
                  Icons.build_outlined,
                  "Beliebiger Zweck",)
            ],
          ),
        ),
      ],
    );
  }

  Widget _containerBoxes(
    IconData icondata,
    String info,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20.0,
        bottom: 20.0,
      ),
      child: Container(
        height: 345,
        width: 750,
        decoration: BoxDecoration(
            color: Color(0xFFE3E3E3),
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(color: Colors.black, width: 0.3)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 38.0,
            right: 38.0,
            top: 50.0,
            bottom: 50.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: WebColors().companyColor1,
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                      child: Icon(
                        icondata,
                        size: 32,
                        color: Colors.white,
                      )),
                  Spacer(),
                      Text(
                        info,
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  bottom: 40.0,
                ),
                child: Container(
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(children: [
                  Text("Uhrzeit wählen", style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Container(
  width: 400, // Set width to 200px
  height: 40, // Set height to 40px
  decoration: BoxDecoration(
    color: Colors.white, // Set background color to white
    borderRadius: BorderRadius.circular(8), // Optional: Rounded corners
    border: Border.all(color: Colors.grey, width: 1), // Optional: Add border for visibility
  ),
  child: DropdownButtonHideUnderline( // Hide default underline of DropdownButton
    child: DropdownButton<String>(
      value: selectedValue,
      isExpanded: true, // Make dropdown fit the container's width
      items: DropdownItems.getItems().map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Center( // Center the text inside the DropdownMenuItem
            child: Text(value),
          ),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue;
        });
      },
      icon: Icon(Icons.arrow_drop_down, color: Colors.black), // Optional: Change dropdown icon color
    ),
  ),
)


                ],),
              ),
              Spacer(),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  height: 60,
                  width: 700,
                  decoration: BoxDecoration(
                      color: WebColors().companyColor1,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.3,
                      )),
                  child: Center(
                    child: Text(
                      "Termin Buchen",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
