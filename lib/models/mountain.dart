// ignore_for_file: constant_identifier_names

enum Continent {
  Europe,
  Asia,
  NorthAmerica,
  SouthAmerica,
  Africa,
}

extension ContinentExtension on Continent {
  String toName() {
    switch (this) {
      case Continent.Europe:
        return 'Europe';
      case Continent.Asia:
        return 'Asia';
      case Continent.NorthAmerica:
        return 'North America';
      case Continent.SouthAmerica:
        return 'South America';
      case Continent.Africa:
        return 'Africa';
    }
  }
}

class Mountain {
  final String? name;
  final String? imagePath;
  final Continent? continent;
  final String? country;
  final String? description;

  Mountain({
    required this.name,
    required this.imagePath,
    required this.continent,
    required this.country,
    required this.description,
  });

 static final List<Mountain> _mountains = [
  Mountain(
    name: 'Dolomites',
    imagePath: 'assets/images/europe/Dolomites.jpg',
    continent: Continent.Europe,
    country: 'Italy',
    description: 'Dolomites, a stunning mountain range in Italy known for its dramatic peaks.'
  ),
  Mountain(
    name: 'Mont Blanc',
    imagePath: 'assets/images/europe/Mont_Blanc.jpg',
    continent: Continent.Europe,
    country: 'France',
    description: 'Mont Blanc, the highest peak in the Alps, offering breathtaking views.'
  ),
  Mountain(
    name: 'Tatra Mountains',
    imagePath: 'assets/images/europe/Tatra_Mountains.jpg',
    continent: Continent.Europe,
    country: 'Slovakia',
    description: 'Tatra Mountains, a picturesque range between Slovakia and Poland.'
  ),
  Mountain(
    name: 'Mount Everest',
    imagePath: 'assets/images/asia/Mount_Everest.jpg',
    continent: Continent.Asia,
    country: 'Nepal',
    description: 'Mount Everest, the world\'s highest peak, a symbol of human determination.'
  ),
  Mountain(
    name: 'K2',
    imagePath: 'assets/images/asia/K2.jpg',
    continent: Continent.Asia,
    country: 'Pakistan',
    description: 'K2, the second-highest mountain, challenging climbers with its steep slopes.'
  ),
  Mountain(
    name: 'Annapurna',
    imagePath: 'assets/images/asia/Annapurna.jpg',
    continent: Continent.Asia,
    country: 'Nepal',
    description: 'Annapurna, a massif in the Himalayas, known for its deadly avalanche-prone slopes.'
  ),
  Mountain(
    name: 'Denali',
    imagePath: 'assets/images/northAmerica/Denali.jpg',
    continent: Continent.NorthAmerica,
    country: 'USA',
    description: 'Denali, the highest peak in North America, standing majestically in Alaska.'
  ),
  Mountain(
    name: 'Banff Mountain',
    imagePath: 'assets/images/northAmerica/Banff_Mountain.jpg',
    continent: Continent.NorthAmerica,
    country: 'Canada',
    description: 'Banff Mountain, part of the Canadian Rockies, surrounded by stunning landscapes.'
  ),
  Mountain(
    name: 'Glacier Point',
    imagePath: 'assets/images/northAmerica/Glacier_Point.jpg',
    continent: Continent.NorthAmerica,
    country: 'USA',
    description: 'Glacier Point, offering panoramic views of Yosemite Valley in the USA.'
  ),
  Mountain(
    name: 'Aconcagua',
    imagePath: 'assets/images/southAmerica/Aconcagua.jpg',
    continent: Continent.SouthAmerica,
    country: 'Argentina',
    description: 'Aconcagua, the highest peak in South America, a challenging climb for mountaineers.'
  ),
  Mountain(
    name: 'Huascarán',
    imagePath: 'assets/images/southAmerica/Huascarán.jpg',
    continent: Continent.SouthAmerica,
    country: 'Peru',
    description: 'Huascarán, a stunning peak in the Andes, known for its impressive glaciated slopes.'
  ),
  Mountain(
    name: 'Mount Fitz Roy',
    imagePath: 'assets/images/southAmerica/Mount_Fitz_Roy .jpg',
    continent: Continent.SouthAmerica,
    country: 'Argentina',
    description: 'Mount Fitz Roy, an iconic peak in Patagonia, attracting climbers and nature enthusiasts.'
  ),
  Mountain(
    name: 'Kilimanjaro',
    imagePath: 'assets/images/africa/Kilimanjaro.jpg',
    continent: Continent.Africa,
    country: 'Tanzania',
    description: 'Kilimanjaro, Africa\'s highest peak, a freestanding volcanic mountain with diverse ecosystems.'
  ),
  Mountain(
    name: 'Table Mountain',
    imagePath: 'assets/images/africa/Table_Mountain.jpg',
    continent: Continent.Africa,
    country: 'South Africa',
    description: 'Table Mountain, a flat-topped mountain in South Africa, overlooking Cape Town.'
  ),
  Mountain(
    name: 'Mount Kenya',
    imagePath: 'assets/images/africa/Mount_Kenya.jpg',
    continent: Continent.Africa,
    country: 'Kenya',
    description: 'Mount Kenya, the highest peak in Kenya, known for its stunning ice cap.'
  ),
];


  static List<Mountain> get mountains => _mountains;

  static List<Mountain> getMountainsByContinent(Continent continent) {
    return mountains
        .where((mountain) => mountain.continent == continent)
        .toList();
  }
}
