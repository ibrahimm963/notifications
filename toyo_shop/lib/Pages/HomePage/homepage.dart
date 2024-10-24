import 'package:flutter/material.dart';
import 'package:toyo_shop/Pages/HomePage/banner.dart';
import 'package:toyo_shop/Pages/HomePage/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image.network(
              "https://media.istockphoto.com/id/1892181739/de/foto/autos-öffnen-die-motorhaube-mit-laptop-der-neben-dem-motor-in-der-autowerkstatt-platziert-ist.jpg?s=2048x2048&w=is&k=20&c=QH9nAx_CMJTP6HE6XsSxhLuOau7liecS8bo3c2nAzj8=",
              width: 2000,
              height: 700,
              fit: BoxFit.cover,
            ),
          ],
        ),
        BannerHome(),
        Header(),
      ],
    );
  }
}
