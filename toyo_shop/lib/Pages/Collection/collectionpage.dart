import 'package:flutter/material.dart';
import 'package:toyo_shop/Pages/Collection/collection_list.dart';
import 'package:toyo_shop/Pages/InsideArticle/insside_articlepage.dart';
import 'package:toyo_shop/info.dart';

class CollectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        right: 100.0,
        left: 100.0,
      ),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          childAspectRatio: 2 / 2.5,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to InsideArticle page when tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InsideArticlePage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade600),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Add the image widget above the spacer
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Image.network(
                              items[index]['img'],
                              fit: BoxFit.cover,
                              height:
                                  500, // Set a fixed height or adjust as needed
                              width: double.infinity, // Make it full width
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: WebColors().companyColor2,
                                      width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0))),
                              child: Icon(
                                Icons.bookmark_add_outlined,
                                size: 50,
                                color: WebColors().companyColor2,
                              ),
                            ),
                          )
                        ],
                      ),
                      Spacer(), // Spacer between image and text
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          bottom: 10.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              items[index]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: WebColors().companyColor2),
                            ),
                            Spacer(),
                            Text(
                              '\$${items[index]['price']}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          childCount: items.length,
        ),
      ),
    );
  }
}
