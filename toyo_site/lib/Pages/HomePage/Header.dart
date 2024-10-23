import 'package:flutter/material.dart';
import 'package:toyo_site/info.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            width: 600,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              color: WebColors().companyColor2.withOpacity(0.6),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Text(
                    "Toyo-Schmiede",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: WebColors().companyColor3,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                _buildButton("Angebote"),
                const SizedBox(width: 20.0),
                _buildButton("Über Uns"),
                const SizedBox(width: 20.0),
                _buildButton("Kontakt"),
              ],
            ),
          ),
        ),
        const Spacer(),
        Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: _buildSignInButton()
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: MouseRegion(cursor: SystemMouseCursors.click, child: _buildQuoteButton()),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButton(String text) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Opacity(
        opacity: 0.86,
        child: Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: WebColors().companyColor1.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color:WebColors().companyColor3, width: 2),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: WebColors().companyColor3),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton() {
    return Container(
      width: 120,
      height: 65,
      decoration: BoxDecoration(
        color: WebColors().companyColor3.withOpacity(1),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: WebColors().companyColor3, width: 1),
        boxShadow: [BoxShadow(
          color: WebColors().companyColor1,
          blurRadius: 2
        )]
      ),
      child: Center(
        child: Text(
          "Sign In",
          style: TextStyle(color: WebColors().companyColor2, fontSize: 20),
        ),
      ),
    );
  }

  Widget _buildQuoteButton() {
    return Container(
      width: 150,
      height: 65,
      decoration: BoxDecoration(
        color: WebColors().companyColor1,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [BoxShadow(
          color: WebColors().companyColor3,
          blurRadius: 2
        )]
      ),
      child: Center(
        child: Text(
          "Loslegen",
          style: TextStyle(color: WebColors().companyColor3, fontSize: 20),
        ),
      ),
    );
  }
}
