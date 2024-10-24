import 'package:flutter/material.dart';
import 'package:toyo_shop/Pages/Collection/collection_list.dart';
import 'package:toyo_shop/Pages/InsideArticle/insside_articlepage.dart';
import 'package:toyo_shop/info.dart';

class RecomendationPage extends StatefulWidget {
  @override
  _RecomendationPageState createState() => _RecomendationPageState();
}

class _RecomendationPageState extends State<RecomendationPage> {
  final ScrollController _scrollController = ScrollController();
  final double _itemWidth = 400.0; // Width of each item

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - _itemWidth,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + _itemWidth,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              "Unsere Vorschläge für dich",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: WebColors().companyColor2),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: _scrollLeft,
              ),
              Expanded(
                child: SizedBox(
                  height: 550, // Adjusted height to accommodate your container
                  child: ListView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
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
                          width: _itemWidth, // Set item width to 400px
                          margin: const EdgeInsets.only(
                              right: 10), // Spacing between items
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade600),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Image.network(
                                        items[index]['img'],
                                        fit: BoxFit.cover,
                                        height:
                                            300, // Adjusted height for image
                                        width:
                                            double.infinity, // Full width image
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: WebColors().companyColor2,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30.0)),
                                        ),
                                        child: Icon(
                                          Icons.bookmark_add_outlined,
                                          size: 50,
                                          color: WebColors().companyColor2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(), // Spacer between image and text
                                Text(
                                  items[index]['name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: WebColors().companyColor2,
                                  ),
                                ),
                                Text(
                                  '\$${items[index]['price']}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: _scrollRight,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
