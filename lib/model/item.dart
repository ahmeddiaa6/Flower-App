class Item {
  String imgPath;
  double price;
  String location;
  String name;

  Item(
      {required this.imgPath,
      required this.name,
      required this.price,
      this.location = "Main branch"});
}

final List<Item> items = [
  Item(name: "product1", price: 12.99, imgPath: "assets/imag/1.webp", location: "Ahmed Shop"),
  Item(name: "product2", price: 12.99, imgPath: "assets/imag/2.webp"),
  Item(name: "product3", price: 12.99, imgPath: "assets/imag/3.webp"),
  Item(name: "product4", price: 12.99, imgPath: "assets/imag/4.webp"),
  Item(name: "product5", price: 12.99, imgPath: "assets/imag/5.webp"),
  Item(name: "product6", price: 12.99, imgPath: "assets/imag/6.webp"),
  Item(name: "product7", price: 12.99, imgPath: "assets/imag/7.webp"),
  Item(name: "product8", price: 12.99, imgPath: "assets/imag/8.webp"),
];
