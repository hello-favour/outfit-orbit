class Product {
  final String imageUrl;
  final String productName;
  final String sellerName;
  final double price;
  final int discount;
  final double rating;

  Product({
    required this.imageUrl,
    required this.productName,
    required this.sellerName,
    required this.price,
    required this.discount,
    required this.rating,
  });
}

final List<Product> products = [
  Product(
    imageUrl: 'https://m.media-amazon.com/images/I/61Bkqv9e4cL._AC_UY1000_.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 29.99,
    discount: 15,
    rating: 4.5,
  ),
  Product(
    imageUrl: 'https://m.media-amazon.com/images/I/61Bkqv9e4cL._AC_UY1000_.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 39.99,
    discount: 20,
    rating: 4.0,
  ),
  Product(
    imageUrl: 'https://m.media-amazon.com/images/I/61Bkqv9e4cL._AC_UY1000_.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 39.99,
    discount: 20,
    rating: 4.0,
  ),
  Product(
    imageUrl: 'https://m.media-amazon.com/images/I/61Bkqv9e4cL._AC_UY1000_.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 39.99,
    discount: 20,
    rating: 4.0,
  ),
  Product(
    imageUrl: 'https://m.media-amazon.com/images/I/61Bkqv9e4cL._AC_UY1000_.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 39.99,
    discount: 20,
    rating: 4.0,
  ),
  Product(
    imageUrl: 'https://m.media-amazon.com/images/I/61Bkqv9e4cL._AC_UY1000_.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 39.99,
    discount: 20,
    rating: 4.0,
  ),
  // Add more products as needed
];
