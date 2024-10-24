import 'package:flutter/material.dart';
import 'package:toyo_shop/info.dart';

class CollectionHeader extends StatelessWidget {
  const CollectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Text(""),
      pinned: true,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _categoryCont("Kategorie1", 200),
              _categoryCont("Kategorie2", 200),
              _categoryCont("Kategorie3", 200),
              _categoryCont("Kategorie4", 200),
            ],
          )),
      toolbarHeight: 90,
    );
  }

  Widget _categoryCont(
    String name,
    double width,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 20.0,
        left: 5.0,
        right: 5.0,
      ),
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(
              color: WebColors().companyColor1,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: WebColors().companyColor1,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
