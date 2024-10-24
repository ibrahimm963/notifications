import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toyo_shop/info.dart';

class InsideArticleInfos extends StatelessWidget {
  const InsideArticleInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 100.0,
        right: 100.0,
        top: 40.0,
      ),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: WebColors().companyColor2)),
        child: Row(
          children: [
            Column(
              children: [
                _imgProp(
                    "https://media.istockphoto.com/id/1193264905/de/foto/differential-hinterachse-des-autos.jpg?s=2048x2048&w=is&k=20&c=BwBkS1oPne4c_dtdlm1g1YNDfFYUs0_l_6di-otrmaU=",
                    200.0),
                _imgProp(
                    "https://media.istockphoto.com/id/1193264905/de/foto/differential-hinterachse-des-autos.jpg?s=2048x2048&w=is&k=20&c=BwBkS1oPne4c_dtdlm1g1YNDfFYUs0_l_6di-otrmaU=",
                    200.0),
                _imgProp(
                    "https://media.istockphoto.com/id/1193264905/de/foto/differential-hinterachse-des-autos.jpg?s=2048x2048&w=is&k=20&c=BwBkS1oPne4c_dtdlm1g1YNDfFYUs0_l_6di-otrmaU=",
                    200.0),
                _imgProp(
                    "https://media.istockphoto.com/id/1193264905/de/foto/differential-hinterachse-des-autos.jpg?s=2048x2048&w=is&k=20&c=BwBkS1oPne4c_dtdlm1g1YNDfFYUs0_l_6di-otrmaU=",
                    200.0)
              ],
            ),
            _imgProp(
                "https://media.istockphoto.com/id/1193264905/de/foto/differential-hinterachse-des-autos.jpg?s=2048x2048&w=is&k=20&c=BwBkS1oPne4c_dtdlm1g1YNDfFYUs0_l_6di-otrmaU=",
                806.0),
            Container(
              width: 700,
              height: 808.0,
              decoration: BoxDecoration(
                  border: Border.all(color: WebColors().companyColor2)),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _infoTexts("Datum der Veröffentlichung"),
                    Text(
                      "Differential Hinterachse",
                      style: TextStyle(
                        fontSize: 38,
                        color: WebColors().companyColor2,
                      ),
                    ),
                    Text(
                      "1129.99 €",
                      style: TextStyle(
                        fontSize: 45,
                        color: WebColors().companyColor2,
                      ),
                    ),
                    Row(
                      children: [
                        _starDec(WebColors().companyColor1),
                        _starDec(WebColors().companyColor1),
                        _starDec(WebColors().companyColor1),
                        _starDec(WebColors().companyColor1),
                        _starDec(Colors.grey.shade700),
                      ],
                    ),
                    _textTitles("Beschreibung"),
                    _infoTexts(
                        "Eine Differential-Hinterachse ist eine mechanische Komponente in Fahrzeugen, die es ermöglicht, dass die Antriebsräder sich mit unterschiedlichen Geschwindigkeiten drehen. Dies ist besonders wichtig in Kurven, da das äußere Rad einen größeren Weg zurücklegt als das innere. Das Differential gleicht die Drehzahlen der beiden Räder aus, indem es das Drehmoment vom Antriebsstrang auf beide Räder verteilt. Dadurch wird ein gleichmäßiges Fahrverhalten gewährleistet und unnötiger Verschleiß vermieden. Differential-Hinterachsen bestehen aus Zahnrädern und Wellen, die in einem Gehäuse untergebracht sind, und sind in vielen Fahrzeugtypen zu finden, von Autos bis zu Lastwagen und Geländewagen."),
                    _textTitles("Verfügbare Modelle"),
                    Row(
                      children: [
                        _chooseBoxes("1", WebColors().companyColor1),
                        _chooseBoxes("2", WebColors().companyColor1),
                        _chooseBoxes("3", WebColors().companyColor1),
                      ],
                    ),
                    _textTitles("Modell Eigenschaften"),
                    Row(
                      children: [
                        _chooseBoxes("A", WebColors().companyColor1),
                        _chooseBoxes("B", WebColors().companyColor1),
                        _chooseBoxes("C", WebColors().companyColor1),
                        _chooseBoxes("D", WebColors().companyColor1),
                      ],
                    ),
                    Row(
                      children: [
                        _buttonCon(
                            "Artikel Markieren",
                            WebColors().companyColor3,
                            WebColors().companyColor1),
                        Spacer(),
                        _buttonCon("Jetzt kaufen", WebColors().companyColor1,
                            WebColors().companyColor3)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoTexts(String content) {
    return Text(
      content,
      style:
          TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.bold),
    );
  }

  Widget _imgProp(
    String img,
    double width,
  ) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: WebColors().companyColor2)),
      child: Image.network(
        img,
        width: width,
        height: width,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _starDec(Color color) {
    return Icon(
      Icons.star,
      size: 30,
      color: color,
    );
  }

  Widget _textTitles(String content) {
    return Text(
      content,
      style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: WebColors().companyColor2),
    );
  }

  Widget _chooseBoxes(
    String content,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: WebColors().companyColor2),
            borderRadius: BorderRadius.all(Radius.circular(6.0))),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Text(
                content,
                style: TextStyle(color: WebColors().companyColor3),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonCon(
    String content,
    Color color,
    Color tcolor,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Container(
        width: 305,
        height: 40,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            border: Border.all(color: WebColors().companyColor1)),
        child: Center(
          child: Text(
            content,
            style: TextStyle(color: tcolor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
