import 'package:toyo_site/Pages/ArtikelPage/ArtikelPage.dart';
import 'package:toyo_site/Pages/ArtikelPage/InsideArtikel.dart';
import 'package:toyo_site/Pages/ArtikelPreview/categories.dart';
import 'package:toyo_site/Pages/Footer/Footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

class Artikel {
  final String image;
  final String name;
  final String description;
  final int preis;
  final int stars;
  final page;

  Artikel({
    required this.image,
    required this.name,
    required this.preis,
    required this.stars,
    required this.description,
    required this.page,

  });
}


List<Artikel> products = [
  Artikel(
    image: "https://media.istockphoto.com/id/1511183664/de/foto/feuerwehrleute-mit-einem-wasserschlauch-um-eine-brandgefahr-zu-beseitigen-team-von-weiblichen.jpg?s=2048x2048&w=is&k=20&c=ag7n5qooM8Sp_4TTJWv3xZ3hy2DBlM7utGoNDABzEag=", 
    name: "Artikel 1", 
    preis: 5421, 
    stars: 3, 
    description: "Gutes Pdsfsfsrodukt",
    page: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InsideArtikel(
              Name: "Artikel 1", 
              Image: "https://media.istockphoto.com/id/1511183664/de/foto/feuerwehrleute-mit-einem-wasserschlauch-um-eine-brandgefahr-zu-beseitigen-team-von-weiblichen.jpg?s=2048x2048&w=is&k=20&c=ag7n5qooM8Sp_4TTJWv3xZ3hy2DBlM7utGoNDABzEag=", 
              Preis: 5421,
              Description: "Gutes Produkt",
              Stars: 3
            ),
            const SizedBox(height: 50,),
            const Kategorien(),
            const SizedBox(height: 50,),
            const ArtikelPage(),
            const SizedBox(height: 50,),
            const Footer(),
          ],
        ),
      ),
    )
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 2", 
    preis: 213, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Test 1213", 
    preis: 4, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "dsfdsf 1", 
    preis: 66, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 1", 
    preis: 5421, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 1", 
    preis: 5421, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 1", 
    preis: 5421, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 99", 
    preis: 2356, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 3", 
    preis: 9999, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 4", 
    preis: 123, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 67", 
    preis: 356, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),
  Artikel(
    image: "https://raw.githubusercontent.com/SoufianElfouzari/FFExklusiv/refs/heads/main/HomeScreen/DepontiOverkapping50%20-%20Pinela%20(8).jpg", 
    name: "Artikel 10", 
    preis: 54, 
    stars: 3, 
    description: "Gutes Produkt",
    page: Footer()
  ),

];