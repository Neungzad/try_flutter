import 'package:try_flutter/models/shoe_tile.dart';

class Cart {
  // Mock data for the shop
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Max",
      price: 150.00,
      imagePath: 'lib/images/product01.jpg',
      description: "Nike Air Max comfortable running shoes",
    ),
    Shoe(
      name: "Jordan Retro",
      price: 200.00,
      imagePath: "lib/images/product02.jpg",
      description: "Classic basketball shoes with iconic design",
    ),
    Shoe(
      name: "Ultra Boost",
      price: 180.00,
      imagePath: "lib/images/product03.jpg",
      description: "Adidas responsive cushioning technology",
    ),
    Shoe(
      name: "Classic Leather",
      price: 90.00,
      imagePath: "lib/images/product04.jpg",
      description: "Timeless design with durable construction",
    ),
    Shoe(
      name: "Running Pro",
      price: 120.00,
      imagePath: "lib/images/product05.jpg",
      description: "Lightweight professional running shoes",
    ),
  ];

  List<Shoe> shoeCart = [];

  void addToCart(Shoe shoe) {
    shoeCart.add(shoe);
  }

  void removeFromCart(Shoe shoe) {
    shoeCart.remove(shoe);
  }

  List<Shoe> getShoeCart() {
    return shoeCart;
  }
}
