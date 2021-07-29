class Foood {
  final String id;
  final String name;
  final String category;
  final String imagePath;
  final String description;
  final double price;
  final double discount;
  final double rating;

  Foood({
    this.description,
    this.id,
    this.name,
    this.category,
    this.imagePath,
    this.price,
    this.discount,
    this.rating,
  });
}

final foods = [
  Foood(
    id: '1',
    imagePath: 'images/lunch.jpeg',
    name: 'Grilled Chicken',
    price: 12.0,
    discount: 34.5,
    category: '1',
    rating: 69.0,
  ),
  Foood(
    id: '1',
    imagePath: 'images/breakfast.jpeg',
    name: 'Hot Coffee',
    price: 22.0,
    discount: 33.5,
    category: '1',
    rating: 99.0,
  ),
  Foood(
    id: '1',
    imagePath: 'images/supper_1.jpeg',
    name: 'Rice',
    price: 30.0,
    discount: 21.5,
    category: '1',
    rating: 80.0,
  ),
];
