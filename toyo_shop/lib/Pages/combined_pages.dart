import 'package:flutter/material.dart';
import 'package:toyo_shop/Pages/Collection/collection_banner.dart';
import 'package:toyo_shop/Pages/Collection/collection_header.dart';
import 'package:toyo_shop/Pages/Collection/collectionpage.dart';
import 'package:toyo_shop/Pages/Footer/footerpage.dart';
import 'package:toyo_shop/Pages/RecomendationPage/recomendationpage.dart';

class CombinedPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          CollectionBanner(),
          CollectionHeader(),
          CollectionPage(),
          SliverToBoxAdapter(
            child: RecomendationPage(),
          ),
          SliverAppBar(
            leading: Text(""),
            toolbarHeight: 310,
            backgroundColor: Color.fromARGB(255, 51, 51, 51),
            flexibleSpace: FooterPage(),
          ),
        ],
      ),
    );
  }
}
