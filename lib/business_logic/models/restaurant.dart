class Restaurant {
  final int id;
  final String name;
  final String location;
  final String city;
  final List cuisines;
  final String imagePath;

  Restaurant(
    this.id,
    this.name,
    this.location,
    this.city,
    this.cuisines,
    this.imagePath,
  );

  static List<Restaurant> fetchAll() {
    return [
      Restaurant(
        1,
        'Hauz Khas Social',
        '9-A & 12, Hauz Khas Village, New Delhi',
        'New Delhi',
        ['Continental', 'Chinese', 'Thai'],
        'assets/images/hauzkhas.jpg',
      ),
      Restaurant(
        2,
        'Eten & Drinken',
        '9-A & 12, Dresden, Furlough',
        'Dresden',
        ['German', 'Chinese'],
        'assets/images/etenndrinken.jpg',
      ),
      Restaurant(
        3,
        'Fish & Chip House',
        '9-A & 12, Baker Street, Westminster, London',
        'London',
        ['English', 'Chinese'],
        'assets/images/fishnchiphouse.jpg',
      ),
      Restaurant(
        4,
        'Arigato Sushi',
        '14 Second Ave North, Yorkton, SK S3N 1G1',
        'Yorkton',
        ['Japanese', 'Sushi'],
        'assets/images/sushihouse.jpg',
      ),
    ];
  }
}
