import 'package:flutter/material.dart';
import 'package:toyo_shop/info.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 220.0,
        left: 100.0,
      ),
      child: Container(
        width: 600,
        height: 421,
        color: Colors.white38,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hier könnte ihr Slogan erscheinen",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: WebColors().companyColor2),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 14.0,
                  bottom: 30.0,
                ),
                child: Text(
                  "Hier könnten Sie einen beliebigen Text hinzufügen, der ihren Shop beschreibt",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      height: 1.0,
                      color: WebColors().companyColor2),
                ),
              ),
              Container(
                width: 180,
                height: 45,
                decoration: BoxDecoration(
                    color: WebColors().companyColor1,
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Jetzt shoppen ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: WebColors().companyColor2),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: WebColors().companyColor2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
