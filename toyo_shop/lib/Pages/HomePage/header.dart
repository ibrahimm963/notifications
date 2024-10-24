import 'package:flutter/material.dart';
import 'package:toyo_shop/info.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 18.0,
        right: 50.0,
        left: 50.0,
      ),
      child: Row(
        children: [
          Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: WebColors().companyColor2,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              child: Icon(
                Icons.menu,
                color: WebColors().companyColor2,
              )),
          Spacer(),
          Icon(
            Icons.search,
            size: 30,
            color: WebColors().companyColor2,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 12.0,
              left: 12.0,
            ),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: WebColors().companyColor2,
            ),
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: WebColors().companyColor2,
          ),
        ],
      ),
    );
  }
}
