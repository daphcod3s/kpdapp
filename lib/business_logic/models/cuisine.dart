class Cuisine {
  final int id;
  final String name;
  final String imagePath;

  Cuisine(this.id, this.name, this.imagePath);

  static List<Cuisine> fetchAll() {
    return [
      Cuisine(1, 'Italian', 'assets/images/italian.jpg'),
      Cuisine(2, 'Chinese', 'assets/images/chinese.jpg'),
      Cuisine(3, 'North Indian', 'assets/images/northindian.jpg'),
      Cuisine(4, 'South Indian', 'assets/images/southindian.jpg'),
      Cuisine(5, 'French', 'assets/images/french.jpg'),
    ];
  }
}
