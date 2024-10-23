class Terassendach {
  final List<dynamic> farbe;  // Specify List<String> here
  final List<dynamic> breite;
  final List<dynamic> tiefe;
  final List<dynamic> dach;
  final List<dynamic> led;
  final List<dynamic> sonnenschutz;
  final List<dynamic> heizstrahler;
  final List<dynamic> tuergriffe;
  final List<dynamic> zugluftstopper;
  final List<dynamic> glasVorderseite;
  final List<dynamic> glasRechts;
  final List<dynamic> glasLinks;
  final List<dynamic> inklusive;
  final List<dynamic> montage;
  final List<dynamic> fundamente;
  final int berwertung;

  Terassendach({
    required this.farbe,
    required this.breite,
    required this.tiefe,
    required this.dach,
    required this.led,
    required this.sonnenschutz,
    required this.heizstrahler,
    required this.tuergriffe,
    required this.zugluftstopper,
    required this.glasVorderseite,
    required this.glasLinks,
    required this.glasRechts,
    required this.inklusive,
    required this.montage,
    required this.fundamente,
    required this.berwertung,
  });
}

List<Terassendach> terassendaecher = [
  Terassendach(
    farbe: [['Matt Weiß', 'Matt Schwarz'], [0, 0]],  // Use List<String> directly
    breite: [['300cm', '400cm', '500cm', '600cm', '700cm', '800cm', '900cm', '1000cm', '1100cm', '1200cm'], [375, 500, 625, 750, 875, 1000, 1125, 1250, 1375, 1500]],
    tiefe: [['250cm', '300cm', '350cm', '400cm'], [100, 300, 500, 800]],
    dach: [['Klarglas', 'Milchglas', 'Klar Polycarbonat', 'Opal Polycarbonat'], [200, 400, 800, 1000]],
    led: [['Set 6 LED - Gratis', 'Set 6 LED', 'Set 12 LED'], [50, 100, 150]],
    sonnenschutz: [['Ohne', 'Mit Unterglasmarkise', 'Mit Aufdachmarkise'], [0, 250, 300]],
    heizstrahler: [['1500 W mit FB - Gratis', '1500 W mit FB', '1800 W ohne FB', '1800 W mit FB', '2400 W mit FB', '3200 W mit FB'], [200, 500, 800, 1200, 2000, 2300]],
    tuergriffe: [['Ohne', '1 Türgriff', '1 Türgriffe'], [0, 100, 200]],
    zugluftstopper: [['Ohne', 'Mit'], [0, 50]],
    glasVorderseite: [['Offen', 'Glasschiebewände', 'Glasschiebewand + Senkrechtmarkise'], [20, 40, 50, 60]],
    glasLinks: [['Offen', 'Glasschiebewände', 'Polycarbonat Klar, Festwand', 'Polycarbonat Matt, Festwand', 'Glasschiebewand + Senkrechtmarkise'], [20, 40, 50 ,80, 120]],  // Added missing comma
    glasRechts: [['Offen', 'Glasschiebewände', 'Polycarbonat Klar, Festwand', 'Polycarbonat Matt, Festwand', 'Glasschiebewand + Senkrechtmarkise'], [20, 40, 50 ,80, 120]],  // Added missing comma
    inklusive: [['Offen', 'Glasschiebewände', 'Polycarbonat Klar, Festwand', 'Polycarbonat Matt, Festwand', 'Glasschiebewand + Senkrechtmarkise'], [20, 40, 50 ,80, 120]],  // Added missing comma
    montage: [['Offen', 'Glasschiebewände', 'Polycarbonat Klar, Festwand', 'Polycarbonat Matt, Festwand', 'Glasschiebewand + Senkrechtmarkise'], [20, 40, 50 ,80, 120]],  // Added missing comma
    fundamente: [['Offen', 'Glasschiebewände', 'Polycarbonat Klar, Festwand', 'Polycarbonat Matt, Festwand', 'Glasschiebewand + Senkrechtmarkise'], [20, 40, 50 ,80, 120]],  // Added missing comma
    berwertung: 4
  )
];



