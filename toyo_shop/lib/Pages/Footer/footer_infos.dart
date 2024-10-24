import 'package:flutter/material.dart';
import 'package:toyo_shop/info.dart';
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
                      "Toyo-Schmiede",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        color: WebColors().companyColor1,
                      ),
                    ),
                  ],
                ),
                _footerButtons(
                    "Europaweit zuständig\nfür Toyota Teile", Placeholder()),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child:
                                buildSocialMediaButton("www.innova-x.de", 0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: buildSocialMediaButton("innova-x.de", 1)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: buildSocialMediaButton("innova-x.de", 2)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: buildSocialMediaButton("innova-x.de", 3)),
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
                _footerInfos("Addresse"),
                _footerButtons("xxxxxxxxxxxx", Placeholder()),
                _footerButtons("xxxxxxxxxxxx", Placeholder()),
                _footerButtons("", Placeholder()),
                _footerButtons("", Placeholder()),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _footerInfos("Kontakt"),
                _footerButtons("xxxxxxxxxxxx", Placeholder()),
                _footerButtons("xxxxxxxxxxxx", Placeholder()),
                _footerButtons("xxxxxxxxxxxx", Placeholder()),
                _footerButtons("xxxxxxxxxxxx", Placeholder()),
              ],
            ),
            Spacer(),
            Spacer(),
          ],
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }

  Widget _footerInfos(String infoHead) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Text(
          infoHead,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: WebColors().companyColor1),
        ),
      ],
    );
  }

  Widget _footerButtons(String info, Widget function) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => function));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Text(
            info,
            style: TextStyle(
                fontSize: 20,
                color: WebColors().companyColor2,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget buildSocialMediaButton(String Url, int chosenButton) {
    List SocialButtons = [
      SocialMediaButton.facebook(
        url: Url,
        size: 30,
        color: WebColors().companyColor1,
      ),
      SocialMediaButton.twitter(
        url: Url,
        size: 30,
        color: WebColors().companyColor1,
      ),
      SocialMediaButton.instagram(
        url: Url,
        size: 30,
        color: WebColors().companyColor1,
      ),
      SocialMediaButton.linkedin(
        url: Url,
        size: 30,
        color: WebColors().companyColor1,
      ),
    ];
    return SocialButtons[chosenButton];
  }
}
