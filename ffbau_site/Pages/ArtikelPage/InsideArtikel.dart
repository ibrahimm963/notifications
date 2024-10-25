import 'package:ffbau_site/Artikel/details.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
// DropdownMenuWidget: A reusable dropdown menu component
class DropdownMenuWidget extends StatefulWidget {
  final String initialValue;
  final List<String> options;
  final Function(String) onChanged;

  const DropdownMenuWidget({
    Key? key,
    required this.initialValue,
    required this.options,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DropdownMenuWidgetState createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
          widget.onChanged(dropdownValue); // Call the provided callback
        });
      },
      items: widget.options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// InsideArtikel: Main class to display article details
class InsideArtikel extends StatefulWidget {
  final String Name;
  final String Image;
  final double Preis;
  final String Description;
  final int Stars;

  InsideArtikel({
    super.key,
    required this.Name,
    required this.Image,
    required this.Preis,
    required this.Description,
    required this.Stars,
  });

  @override
  State<InsideArtikel> createState() => _InsideArtikelState();
}

class _InsideArtikelState extends State<InsideArtikel> {

  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200.0, top: 100, right: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextStyle(
            child: Text(
              widget.Name
            ),
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
          ),
          DefaultTextStyle(
            child: Text(
              widget.Description
            ),
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Container(
                width: 1100,
                height: 800,
                child: ClipRRect(
                  child: Image.network(
                    widget.Image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 800,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 390,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    DefaultTextStyle(
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      child: Text(
                                        "Gesamt: ",
                                        
                                      ),
                                    ),
                                    DefaultTextStyle(
                                      child: Text(
                                        r"$" + widget.Preis.toString()
                                      ),
                                        style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.red,
                                          fontWeight: FontWeight.w900,
                                        ),
                                    ),
                                  ],
                                ),
                                DefaultTextStyle(
                                  style: TextStyle(),
                                  child: Text("Inkl. MwSt. und Versandkosten Lieferzeit 3-5 Werktage")
                                  ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0,),
                        child: SizedBox( width: 394, height: 640,
                          child: ListView(
                            children: [
                              SizedBox(height: 30),
                                                DefaultTextStyle(
                          child: const Text(
                            "Farbe, Abmessungen, Dacheindeckung"
                          ),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 56, 56, 56),
                            ),
                                                ),
                                                SizedBox(height: 20,),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Farbe"),
                                const Spacer(),
                                _dropdownMenu(terassendaecher[0].farbe[0]),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Breite"),
                                const Spacer(),
                                _dropdownMenu(terassendaecher[0].breite[0]),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Tiefe"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].tiefe[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                SizedBox(
                          width: 350,
                          height: 50,
                          child: Row(
                            children: [
                              _dropDownMenuName("Dach"),
                              Spacer(),
                              _dropdownMenu(terassendaecher[0].dach[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                            ],
                          ),
                          ),
                            SizedBox(height: 50),
                            DefaultTextStyle(
                          child: const Text(
                            "Zubehör"
                          ),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 56, 56, 56),
                            ),
                                                ),
                                                SizedBox(height: 20,),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("LED-Beleuchtung"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].led[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Sonnenschutz"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].sonnenschutz[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Heizstrahler"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].heizstrahler[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Türgriffe"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].tuergriffe[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                            ),
                          ),
                          SizedBox(
                          width: 350,
                          height: 50,
                          child: Row(
                            children: [
                              _dropDownMenuName("Zugluftstopper"),
                              Spacer(),
                              _dropdownMenu(terassendaecher[0].zugluftstopper[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                            ],
                          ),
                          ),
                          SizedBox(height: 50),
                            DefaultTextStyle(
                          child: const Text(
                            "Verglasung, Glasschiebeelemente"
                          ),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 56, 56, 56),
                            ),
                                                ),
                                                SizedBox(height: 20,),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Vorderseite"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].glasVorderseite[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Rechte Seite"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].glasRechts[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Linke Seite"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].glasLinks[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                          ),
                          SizedBox(height: 50),
                            DefaultTextStyle(
                          child: const Text(
                            "Technische Ausrüstung"
                          ),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 56, 56, 56),
                            ),
                                                ),
                                                SizedBox(height: 20,),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Inklusive"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].inklusive[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Montage"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].montage[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                          ),
                                                ),
                                                Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Heizstrahler"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].heizstrahler[0]),
                              ],
                            ),
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: SizedBox(
                            width: 350,
                            height: 50,
                            child: Row(
                              children: [
                                _dropDownMenuName("Türgriffe"),
                                Spacer(),
                                _dropdownMenu(terassendaecher[0].tuergriffe[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                              ],
                            ),
                            ),
                          ),
                          SizedBox(
                          width: 350,
                          height: 50,
                          child: Row(
                            children: [
                              _dropDownMenuName("Zugluftstopper"),
                              Spacer(),
                              _dropdownMenu(terassendaecher[0].glasLinks[0]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                                  child: Icon(Icons.info_outline, size: 34,),
                                ),
                            ],
                          ),
                          ),
                          SizedBox(height: 25,)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 394, height: 60, 
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Center(
                          child: DefaultTextStyle(
                            child: Text("Weiter"),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  Widget _dropDownMenuName(String keyWord) {
    return DefaultTextStyle(
      child: Text(
          keyWord
        ),
        style: const TextStyle(
            fontSize: 20,
          ),
    );
  }
  Widget _dropdownMenu(List<String> listOptions) {
  return Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 214, 213, 213).withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 170,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>( // Bug Muss gefixed werden
              isExpanded: true,
              hint: DefaultTextStyle(
                child: Text(
                  'Select Item'
                ),
                style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
              ),
              items: listOptions.map((String item) => DropdownMenuItem<String>(
                value: item,
                child: DefaultTextStyle(
                  child: Text(
                    item
                  ),
                  style: const TextStyle(
                      fontSize: 14,
                    ),
                ),
              )).toList(),
              value: selectedValue,
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value; // Update selected value
                });
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                width: 140,
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
              ),
            ),
          ),
        ),
      );
}
}
