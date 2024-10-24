import 'package:flutter/material.dart';
import 'package:toyo_shop/Pages/Footer/footerpage.dart';
import 'package:toyo_shop/Pages/HomePage/header.dart';
import 'package:toyo_shop/Pages/InsideArticle/inside_article_infos.dart';
import 'package:toyo_shop/Pages/RecomendationPage/recomendationpage.dart';
import 'package:toyo_shop/Pages/combined_pages.dart';
import 'package:toyo_shop/info.dart';

class InsideArticlePage extends StatelessWidget {
  const InsideArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Header(),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 90.0,
                    top: 18.0,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CombinedPages(),
                          ),
                        );
                      },
                      child: Container(
                        height: 30,
                        width: 220,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            border: Border.all(
                              color: WebColors().companyColor2,
                              width: 2.0,
                            )),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: WebColors().companyColor2,
                                ),
                                Spacer(),
                                Text(
                                  "Zurück zum Shop",
                                  style: TextStyle(
                                      color: WebColors().companyColor2,
                                      fontSize: 20),
                                ),
                              ]),
                        ),
                      ))),
            ],
          ),
          InsideArticleInfos(),
          RecomendationPage(),
          FooterPage(),
        ],
      ),
    );
  }
}
