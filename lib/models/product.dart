class Product {
  final String name;
  final String category;
  final String image;
  final double price;
  final bool? available = true;

  Product(
      {required this.name,
      required this.category,
      required this.image,
      required this.price});
}
