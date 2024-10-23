import 'package:flutter/material.dart';
import 'package:toyo_site/info.dart';

class FooterBanner extends StatefulWidget {
  const FooterBanner({super.key});

  @override
  State<FooterBanner> createState() => _FooterBannerState();
}

class _FooterBannerState extends State<FooterBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Stack(
            children: [
              Text("LOS GEHT'S",
                style: TextStyle(
                  fontSize: 300,
                  fontWeight: FontWeight.w900,
                  color: WebColors().companyColor2
                ),
              ),
              Positioned(
                width: 100,
                height: 100,
                top: 20,
                right: 25,
                child: FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150)
                  ),
                  child: Icon(Icons.next_plan, size: 40, color: Colors.black,),
                  backgroundColor: WebColors().companyColor1,
                  
                ),
               )
            ]
          )
        ],
      ),
    );
  }
}