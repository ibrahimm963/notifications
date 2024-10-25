import 'package:flutter/material.dart';
import 'package:ffbau_site/info.dart';

class BannerContent extends StatefulWidget {
  const BannerContent({super.key});

  @override
  State<BannerContent> createState() => _BannerContentState();
}

class _BannerContentState extends State<BannerContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56.0,), // Add horizontal padding to avoid overflow
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                width: 240,
                height: 40,
                decoration: BoxDecoration(
                  color: WebColors().companyColor3.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: WebColors().companyColor2, width: 2),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        "Werkstatt entdecken",
                        style: TextStyle(
                          color: WebColors().companyColor2,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_circle_right,
                        color: WebColors().companyColor1,
                        shadows: [BoxShadow(
                          color: WebColors().companyColor2,
                          blurRadius: 2,
                          blurStyle: BlurStyle.solid
                        )],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              "Hier könnte Ihr \nSlogan stehen",
              style: TextStyle(
                color: WebColors().companyColor3,
                fontSize: 120,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),

          _startCreatingButton(),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _createMarketingAnnouncement(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _startCreatingButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: 220,
          height: 65,
          decoration: BoxDecoration(
            color: WebColors().companyColor2,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Row(
              children: [
                Spacer(),
                Text(
                  "Zu Toyo-Parts  ",
                  style: TextStyle(color: WebColors().companyColor3, fontSize: 20),
                ),
                Icon(
                  Icons.workspaces_rounded, 
                  color: WebColors().companyColor3, 
                  size: 40,
                  shadows: [BoxShadow(
                          color: WebColors().companyColor2,
                          blurRadius: 2,
                          blurStyle: BlurStyle.solid
                        )],),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

Widget _createMarketingAnnouncement() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: 350,
          height: 180,
          decoration: BoxDecoration(
            color: WebColors().companyColor3,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: WebColors().companyColor3, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 160,
                  height: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Ensure rounded corners
                    child: Image.network(
                      // ! HERE IMAGE TEST
                      "https://images.squarespace-cdn.com/content/v1/6318e4ac6607907f9300551c/a186109f-94cb-41ae-8531-71da08588a6a/wellhoefer.jpg?format=750w", // ! HERE IMAGE TEST
                      // ! HERE IMAGE TEST 
                      fit: BoxFit.contain, // Cover the container
                    ),
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("5k+", style: TextStyle(fontSize: 42, fontWeight: FontWeight.w900, color: WebColors().companyColor2)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Artikel", style: TextStyle(fontSize: 22, color: WebColors().companyColor2)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
