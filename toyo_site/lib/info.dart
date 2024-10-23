import 'package:flutter/material.dart';

class WebColors {
  final Color companyColor1 = const Color(0xFFEE1D23);
  final Color companyColor2 = Colors.black;
  final Color companyColor3 = Colors.white;
}

class DropdownItems {
  static List<String> getItems() {
    return ['08:00', '08:30', '09:00', '09:30', '10:00', '10:30', '11:00', '11:30', '12:00', '12:30', '13:00', '13:30', '14:00', '14:30', '15:00', '15:30', '16:00']; // The items you want to display
  }
}