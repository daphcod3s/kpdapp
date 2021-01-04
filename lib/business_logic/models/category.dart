class Category {
  final int id;
  final String name;
  final String imagePath;

  Category(this.id, this.name, this.imagePath);

  static List<Category> fetchAll() {
    return [
      Category(1, 'Pizza', 'assets/images/pizza.jpg'),
      Category(2, 'Burgers', 'assets/images/burgers.jpg'),
      Category(3, 'Noodles', 'assets/images/noodles.jpg'),
      Category(4, 'Soup', 'assets/images/soup.jpg'),
      Category(5, 'Chickens', 'assets/images/chickens.jpg'),
    ];
  }
}
