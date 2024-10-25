import 'package:flutter/material.dart';
import 'package:ffbau_site/info.dart';
import 'package:social_media_buttons/social_media_button.dart';

class FooterInfo extends StatefulWidget {
  const FooterInfo({super.key});

  @override
  State<FooterInfo> createState() => _FooterInfoState();
}

class _FooterInfoState extends State<FooterInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
                    Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                   
                            Text(
                              "FF Baustoffe",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: WebColors().companyColor2,
                              ),
                            ),
                  ],
                ),
                _footerButtons("Wir bieten\nTest Test Test Test Test", Placeholder()),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: MouseRegion(cursor: SystemMouseCursors.click, child: buildSocialMediaButton("www.innova-x.de", 0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MouseRegion(cursor: SystemMouseCursors.click,child: buildSocialMediaButton("innova-x.de", 1)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MouseRegion(cursor: SystemMouseCursors.click,child: buildSocialMediaButton("innova-x.de", 2)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MouseRegion(cursor: SystemMouseCursors.click,child: buildSocialMediaButton("innova-x.de", 3)),
                      ),
                    ],
                  ),
                ),

              ],
            ),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _footerInfos("Unternehmen"),
                        _footerButtons("Home", Placeholder()),
                        _footerButtons("Über Uns", Placeholder()),
                        _footerButtons("Wie wir Arbeiten", Placeholder()),
                        _footerButtons("Unsere Angebote", Placeholder()),
                        
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _footerInfos("Rechtliches"),
                        _footerButtons("AGB", Placeholder()),
                        _footerButtons("Datenschutzerklärung", Placeholder()),
                        _footerButtons("Wiederrufsrecht", Placeholder()),
                        _footerButtons("Impressum", Placeholder()),
                        
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _footerInfos("Firmensitz"),
                        _footerButtons("Helfensteinweg 16", Placeholder()),
                        _footerButtons("34379 Calden", Placeholder()),
                        _footerButtons("", Placeholder()),
                        _footerButtons("", Placeholder()),
                        
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _footerInfos("Büro und Schulung"),
                        _footerButtons("Flugplatzstr. 33", Placeholder()),
                        _footerButtons("34379 Calden", Placeholder()),
                        _footerButtons("Tel: 05609-807909-0", Placeholder()),
                        _footerButtons("Fax: 05609-807909-20", Placeholder()),
                        
                      ],
                    ),
                    Spacer(),
                    Spacer(),
          ],
        ),
        SizedBox(height: 50,)
       
      ],
    );
  }

  Widget _footerInfos(String infoHead) {
    return Column(
                      children: [
                        SizedBox(height: 12,),
                        Text(infoHead, 
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: WebColors().companyColor2
                          ),
                        ),
                      ],
                    );
  }

  Widget _footerButtons(String info, Widget function) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => function));
      },
      child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(info,
                                style: TextStyle(fontSize: 20, color: WebColors().companyColor1, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
    );
  }

  Widget buildSocialMediaButton(String Url, int chosenButton){
  List SocialButtons = [
    SocialMediaButton.facebook(
       url: Url,
       size: 30,
       color: WebColors().companyColor2,
    ),    
  
  SocialMediaButton.twitter(
     url: Url,
     size: 30,
     color: WebColors().companyColor2,
  ),    SocialMediaButton.instagram(
     url: Url,
     size: 30,
     color: WebColors().companyColor2,
  ),    SocialMediaButton.linkedin(
     url: Url,
     size: 30,
     color: WebColors().companyColor2,
  ),    
  ];
  return SocialButtons[chosenButton];
}


}