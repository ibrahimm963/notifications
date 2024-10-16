import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Unsere Produkte",
            style: TextStyle(
                color: Color.fromARGB(255, 99, 20, 20),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 800,
              child: Row(
                children: [
                  Column(
                    children: [
                      _ListShopItem("Box Handschuhe", 79.99),
                      _ListShopItem("Schienbeinschoner", 12.99),
                      _ListShopItem("Bandagen", 2.99)
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      _ListShopItem("Mundschutz", 4.99),
                      _ListShopItem("MMA Handschuhe", 59.99),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget _ListShopItem(
    String name,
    double preis,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10.0,
        top: 10.0,
      ),
      child: Container(
        height: 240,
        width: 900,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2024/01/04/23/48/ai-generated-8488608_1280.jpg",
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 99, 20, 20),
                      ),
                    ),
                    Spacer(),
                    Text(
                      preis.toString() + " €",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
