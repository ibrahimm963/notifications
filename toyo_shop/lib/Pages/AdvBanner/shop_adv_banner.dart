import 'package:flutter/material.dart';
import 'package:toyo_shop_banner/info.dart';

class ShopAdvBanner extends StatelessWidget {
  const ShopAdvBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 120.0, right: 120.0, top: 60.0,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0), // Adjust radius as needed
                  child: Image.network("https://media.istockphoto.com/id/494417689/de/foto/h%C3%A4ndler-stock.jpg?s=2048x2048&w=is&k=20&c=YcufF1YANnZzaTPUYsBWLUU1nMuTkRe0wjCjc_qf1mc=",
                  width: 750, height: 800, fit: BoxFit.cover,)
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 16.0, bottom: 16.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network("https://raw.githubusercontent.com/SoufianElfouzari/website_pictures/refs/heads/main/toyo/ToyoSchmiede_Logo_schwarz_lang.png",
                      width: 300, height: 60,),
                      Padding(
                        padding: const EdgeInsets.only(top: 160.0, bottom: 240),
                        child: Container(
                          width: 400, height: 285, color: Colors.white54,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("Hier können Sie einen beliebigen Text ihrer Wahl hinzufügen",
                            style: TextStyle(
                              fontSize: 44,
                              color: WebColors().companyColor2,
                              fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Text("testtesttesttesttesttest",
                      style: TextStyle(color: WebColors().companyColor3),)
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 150.0, top: 50.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _banImg("https://media.istockphoto.com/id/518356470/de/foto/monochrom-modernen-leistungsstarke-auto-motor-isoliert-auf-wei%C3%9Fer-hintergrund.jpg?s=1024x1024&w=is&k=20&c=kcenb9Jadnxk0-vmbcnzQIu25_CMrLQvu1hE2BhjeaM="),
                  _banCon("Hier liegen Informationen vor", "Hier können Sie eine bestimmte\nKategorie präsentieren")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0, bottom: 50.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _banCon("Hier liegen Informationen vor", "Hier können Sie eine bestimmte\nKategorie präsentieren"),
                  _banImg("https://media.istockphoto.com/id/1312474551/de/foto/autoradbolzensatz-isoliert.jpg?s=2048x2048&w=is&k=20&c=MP6jzApsqEjK8gjPIfMPPohZHK1sSROIA9-7s1Eyugw=")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _banImg(String src) {
      return Image.network(src, width: 400, height: 400, fit: BoxFit.cover,);
    }

  Widget _banCon(
    String info,
    String content,
  ) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(info,
          style: TextStyle(
            color: WebColors().companyColor2,
            fontSize: 18,
          ),),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 50.0,),
            child: Text(content,
            style: TextStyle(
              color: WebColors().companyColor2,
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            width: 200, height: 40,
            decoration: BoxDecoration(
              color: WebColors().companyColor1,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: Center(child: Text("Jetzt Shoppen",
            style: TextStyle(color: WebColors().companyColor3, fontWeight: FontWeight.bold),),),
          )
        ],
      ),
    );
  }
}
