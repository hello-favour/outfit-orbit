class Product {
  final String imageUrl;
  final String productName;
  final String sellerName;
  final double price;
  final int discount;
  final double rating;
  final String category;
  Product({
    required this.imageUrl,
    required this.productName,
    required this.sellerName,
    required this.price,
    required this.discount,
    required this.rating,
    required this.category,
  });
}

final List<Product> newProducts = [
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/yellow-jumper-hanger-with-sneakers-set-baby-clothes-accessories-spring-autumn-summer-white-background-fashion-kids-outfit-flat-lay-top-view_479776-7505.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 29.99,
    category: 'Dresses',
    discount: 15,
    rating: 4.5,
  ),
  Product(
    imageUrl:
        'https://as2.ftcdn.net/v2/jpg/02/45/01/11/1000_F_245011176_i4qWO79NPTyfGL1v6xDRGGHjkdQBWNb5.jpg',
    productName: 'Casual Dress',
    sellerName: 'Zara',
    price: 49.99,
    discount: 20,
    rating: 4.7,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://c8.alamy.com/comp/E9PENE/lightweight-running-shoes-for-athletics-on-a-white-background-E9PENE.jpg',
    productName: 'Crop Top',
    sellerName: 'Forever 21',
    price: 19.99,
    discount: 10,
    rating: 4.2,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://t3.ftcdn.net/jpg/09/19/54/72/360_F_919547212_o3ATHWHfKct94RrAO9RZVa96eDnp9cTk.jpg',
    productName: 'Sleeveless Blouse',
    sellerName: 'H&M',
    price: 24.99,
    discount: 5,
    rating: 4.0,
    category: 'Skirts',
  ),
  Product(
    imageUrl:
        'https://thumbs.dreamstime.com/b/sport-shoes-isolated-white-background-running-training-116201104.jpg',
    productName: 'Denim Skirt',
    sellerName: 'Levi\'s',
    price: 34.99,
    discount: 15,
    rating: 4.3,
    category: 'Jeans',
  ),
  Product(
    imageUrl:
        'https://media.istockphoto.com/id/1462062864/photo/white-crop-top-mockup-on-posing-girl-in-jeans-isolated-on-background-front-view.jpg?s=612x612&w=0&k=20&c=Ea07KsvieYAUvezMaSDh1xXR4R7yvF-rb9USP_JtAdw=',
    productName: 'Classic Jeans',
    sellerName: 'Wrangler',
    price: 39.99,
    discount: 10,
    rating: 4.1,
    category: 'Blouses',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/women-s-tshirts-hanger-white-background_176873-12958.jpg',
    productName: 'Chiffon Blouse',
    sellerName: 'Mango',
    price: 29.99,
    discount: 12,
    rating: 4.4,
    category: 'Blouses',
  ),
  Product(
    imageUrl:
        'https://i5.walmartimages.com/asr/5d54ae60-7320-455e-b152-9949f31903b3.2e6ff37aaa45c7cb8e50d082dcfed50d.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',
    productName: 'Summer Skirt',
    sellerName: 'GAP',
    price: 25.99,
    discount: 8,
    rating: 4.0,
    category: 'Skirts',
  ),
  Product(
    imageUrl:
        'https://i.pinimg.com/736x/b4/d4/38/b4d438887f7f45d5673814a91e0083c5.jpg',
    productName: 'Party Dress',
    sellerName: 'Bershka',
    price: 59.99,
    discount: 18,
    rating: 4.8,
    category: 'Dresses',
  ),
  Product(
    imageUrl: 'https://m.media-amazon.com/images/I/71HHymRFeLL._AC_UY1000_.jpg',
    productName: 'Office Shirt',
    sellerName: 'Uniqlo',
    price: 19.99,
    discount: 5,
    rating: 4.0,
    category: 'Jeans',
  ),
  Product(
    imageUrl:
        'https://image.made-in-china.com/2f0j00wHlkJPDYlbqs/Men-s-Autumn-and-Winter-Pullover-Long-Sleeved-Hoodie-Fashion-Casual-Sports.webp',
    productName: 'Hoodie',
    sellerName: 'Nike',
    price: 49.99,
    discount: 15,
    rating: 4.6,
    category: 'Blouses',
  ),
  Product(
    imageUrl: 'https://m.media-amazon.com/images/I/61Bkqv9e4cL._AC_UY1000_.jpg',
    productName: 'Joggers',
    sellerName: 'Adidas',
    price: 39.99,
    discount: 12,
    rating: 4.3,
    category: 'Blouses',
  ),
  Product(
    imageUrl:
        'https://www.dhresource.com/webp/m/260x260/f2/albu/g22/M00/6E/30/rBVaE2KUNXaAO2qKAAEEUOZQlYA411.jpg',
    productName: 'Blazer',
    sellerName: 'Zara',
    price: 69.99,
    discount: 10,
    rating: 4.5,
    category: 'Dresses',
  ),
  Product(
    imageUrl:
        'https://images.pexels.com/photos/7318904/pexels-photo-7318904.jpeg',
    productName: 'Polo Shirt',
    sellerName: 'Ralph Lauren',
    price: 44.99,
    discount: 5,
    rating: 4.4,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/white-blank-polo-tshirt-template-natural-shape-invisible-mannequin-isolated-white-background_373676-1263.jpg',
    productName: 'Formal Pants',
    sellerName: 'Hugo Boss',
    price: 59.99,
    discount: 18,
    rating: 4.5,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://i5.walmartimages.com/seo/Shoulder-Bag-Fashion-Shoulder-Bags-Casual-Leather-Messenger-Bag-Large-Capacity-Handbag-Fashion-Womens-Bag-Small-Shoulder-Bag-for-Men-Khaki-One-Size_6dc3f6fc-b102-486c-a87a-3dff22734c0c.f870430d06f8451d986542b6385eb79c.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',
    productName: 'Sweater',
    sellerName: 'Uniqlo',
    price: 29.99,
    discount: 8,
    rating: 4.2,
    category: 'Skirts',
  ),
  Product(
    imageUrl:
        'https://www.shutterstock.com/image-photo/pink-knitted-wool-sweater-dancing-600nw-2194991085.jpg',
    productName: 'Leather Jacket',
    sellerName: 'Levi\'s',
    price: 89.99,
    discount: 25,
    rating: 4.7,
    category: 'Jeans',
  ),
  Product(
    imageUrl:
        'https://media.istockphoto.com/id/656678076/photo/polo-t-shirts.jpg?s=612x612&w=0&k=20&c=Nc-tcWfSWo6IIlFbh-xAKD63WnDBN56HlC8J0GBAINM=',
    productName: 'Pullover',
    sellerName: 'Zara',
    price: 39.99,
    discount: 12,
    rating: 4.3,
    category: 'Blouses',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/white-hoodie-with-white-hoodie-it_1103290-51915.jpg?w=360',
    productName: 'Long Coat',
    sellerName: 'Mango',
    price: 109.99,
    discount: 20,
    rating: 4.8,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://i.pinimg.com/736x/8c/a3/8c/8ca38cc45509a71c47431810cf7a9223.jpg',
    productName: 'Sports Shorts',
    sellerName: 'Nike',
    price: 24.99,
    discount: 5,
    rating: 4.3,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/men-s-casual-clothes-accessories-shirt-t-shirt-jeans-isolated-white-background_142957-1129.jpg',
    productName: 'Yoga Pants',
    sellerName: 'Lululemon',
    price: 49.99,
    discount: 12,
    rating: 4.6,
    category: 'Dresses',
  ),
  Product(
    imageUrl:
        'https://i.pinimg.com/736x/c9/35/e1/c935e1ba4f7cb0acdd24ef7d4ce49a1e.jpg',
    productName: 'Silk Scarf',
    sellerName: 'Gucci',
    price: 79.99,
    discount: 15,
    rating: 4.7,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/blue-jeans-white-background-view-from_93675-147512.jpg',
    productName: 'Track Jacket',
    sellerName: 'Adidas',
    price: 59.99,
    discount: 20,
    rating: 4.4,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://www.shutterstock.com/image-photo/cyan-summer-stile-shirt-isolated-260nw-2448662399.jpg',
    productName: 'Sneakers',
    sellerName: 'Puma',
    price: 64.99,
    discount: 10,
    rating: 4.5,
    category: 'Skirts',
  ),
  Product(
    imageUrl:
        'https://cdn.freepixel.com/preview/free-photos-trendy-winter-clothes---a-fashionable-and-warm-sweater-in-a-bold-shade-of-orange-yellow-this-ribbed-preview-1004205359.jpg',
    productName: 'Graphic Tee',
    sellerName: 'H&M',
    price: 14.99,
    discount: 5,
    rating: 4.1,
    category: 'Jeans',
  ),
];

//SALES PRODUCT

final List<Product> salesProducts = [
  Product(
    imageUrl:
        'https://media.istockphoto.com/id/656678076/photo/polo-t-shirts.jpg?s=612x612&w=0&k=20&c=Nc-tcWfSWo6IIlFbh-xAKD63WnDBN56HlC8J0GBAINM=',
    productName: 'Pullover',
    sellerName: 'Zara',
    price: 39.99,
    discount: 12,
    rating: 4.3,
    category: 'Blouses',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/yellow-jumper-hanger-with-sneakers-set-baby-clothes-accessories-spring-autumn-summer-white-background-fashion-kids-outfit-flat-lay-top-view_479776-7505.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 29.99,
    category: 'Dresses',
    discount: 15,
    rating: 4.5,
  ),
  Product(
    imageUrl:
        'https://images.pexels.com/photos/7318904/pexels-photo-7318904.jpeg',
    productName: 'Polo Shirt',
    sellerName: 'Ralph Lauren',
    price: 44.99,
    discount: 5,
    rating: 4.4,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/men-s-casual-clothes-accessories-shirt-t-shirt-jeans-isolated-white-background_142957-1129.jpg',
    productName: 'Yoga Pants',
    sellerName: 'Lululemon',
    price: 49.99,
    discount: 12,
    rating: 4.6,
    category: 'Dresses',
  ),
  Product(
    imageUrl:
        'https://c8.alamy.com/comp/E9PENE/lightweight-running-shoes-for-athletics-on-a-white-background-E9PENE.jpg',
    productName: 'Crop Top',
    sellerName: 'Forever 21',
    price: 19.99,
    discount: 10,
    rating: 4.2,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/white-blank-polo-tshirt-template-natural-shape-invisible-mannequin-isolated-white-background_373676-1263.jpg',
    productName: 'Formal Pants',
    sellerName: 'Hugo Boss',
    price: 59.99,
    discount: 18,
    rating: 4.5,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://i5.walmartimages.com/seo/Shoulder-Bag-Fashion-Shoulder-Bags-Casual-Leather-Messenger-Bag-Large-Capacity-Handbag-Fashion-Womens-Bag-Small-Shoulder-Bag-for-Men-Khaki-One-Size_6dc3f6fc-b102-486c-a87a-3dff22734c0c.f870430d06f8451d986542b6385eb79c.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',
    productName: 'Sweater',
    sellerName: 'Uniqlo',
    price: 29.99,
    discount: 8,
    rating: 4.2,
    category: 'Skirts',
  ),
  Product(
    imageUrl:
        'https://image.made-in-china.com/2f0j00wHlkJPDYlbqs/Men-s-Autumn-and-Winter-Pullover-Long-Sleeved-Hoodie-Fashion-Casual-Sports.webp',
    productName: 'Hoodie',
    sellerName: 'Nike',
    price: 49.99,
    discount: 15,
    rating: 4.6,
    category: 'Blouses',
  ),
  Product(
    imageUrl:
        'https://thumbs.dreamstime.com/b/sport-shoes-isolated-white-background-running-training-116201104.jpg',
    productName: 'Denim Skirt',
    sellerName: 'Levi\'s',
    price: 34.99,
    discount: 15,
    rating: 4.3,
    category: 'Jeans',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/blue-jeans-white-background-view-from_93675-147512.jpg',
    productName: 'Track Jacket',
    sellerName: 'Adidas',
    price: 59.99,
    discount: 20,
    rating: 4.4,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://cdn.freepixel.com/preview/free-photos-trendy-winter-clothes---a-fashionable-and-warm-sweater-in-a-bold-shade-of-orange-yellow-this-ribbed-preview-1004205359.jpg',
    productName: 'Graphic Tee',
    sellerName: 'H&M',
    price: 14.99,
    discount: 5,
    rating: 4.1,
    category: 'Jeans',
  ),
  Product(
    imageUrl:
        'https://i5.walmartimages.com/asr/5d54ae60-7320-455e-b152-9949f31903b3.2e6ff37aaa45c7cb8e50d082dcfed50d.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',
    productName: 'Summer Skirt',
    sellerName: 'GAP',
    price: 25.99,
    discount: 8,
    rating: 4.0,
    category: 'Skirts',
  ),
  Product(
    imageUrl:
        'https://www.dhresource.com/webp/m/260x260/f2/albu/g22/M00/6E/30/rBVaE2KUNXaAO2qKAAEEUOZQlYA411.jpg',
    productName: 'Blazer',
    sellerName: 'Zara',
    price: 69.99,
    discount: 10,
    rating: 4.5,
    category: 'Dresses',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/white-hoodie-with-white-hoodie-it_1103290-51915.jpg?w=360',
    productName: 'Long Coat',
    sellerName: 'Mango',
    price: 109.99,
    discount: 20,
    rating: 4.8,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://as2.ftcdn.net/v2/jpg/02/45/01/11/1000_F_245011176_i4qWO79NPTyfGL1v6xDRGGHjkdQBWNb5.jpg',
    productName: 'Casual Dress',
    sellerName: 'Zara',
    price: 49.99,
    discount: 20,
    rating: 4.7,
    category: 'Crop Tops',
  ),
];

//ARRIVED PRODUCT
final List<Product> arrivedProducts = [
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/white-blank-polo-tshirt-template-natural-shape-invisible-mannequin-isolated-white-background_373676-1263.jpg',
    productName: 'Formal Pants',
    sellerName: 'Hugo Boss',
    price: 59.99,
    discount: 18,
    rating: 4.5,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://cdn.freepixel.com/preview/free-photos-trendy-winter-clothes---a-fashionable-and-warm-sweater-in-a-bold-shade-of-orange-yellow-this-ribbed-preview-1004205359.jpg',
    productName: 'Graphic Tee',
    sellerName: 'H&M',
    price: 14.99,
    discount: 5,
    rating: 4.1,
    category: 'Jeans',
  ),
  Product(
    imageUrl:
        'https://images.pexels.com/photos/7318904/pexels-photo-7318904.jpeg',
    productName: 'Polo Shirt',
    sellerName: 'Ralph Lauren',
    price: 44.99,
    discount: 5,
    rating: 4.4,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/yellow-jumper-hanger-with-sneakers-set-baby-clothes-accessories-spring-autumn-summer-white-background-fashion-kids-outfit-flat-lay-top-view_479776-7505.jpg',
    productName: 'Evening Dress',
    sellerName: 'Dorothy Perkins',
    price: 29.99,
    category: 'Dresses',
    discount: 15,
    rating: 4.5,
  ),
  Product(
    imageUrl:
        'https://i5.walmartimages.com/asr/5d54ae60-7320-455e-b152-9949f31903b3.2e6ff37aaa45c7cb8e50d082dcfed50d.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',
    productName: 'Summer Skirt',
    sellerName: 'GAP',
    price: 25.99,
    discount: 8,
    rating: 4.0,
    category: 'Skirts',
  ),
  Product(
    imageUrl:
        'https://i5.walmartimages.com/seo/Shoulder-Bag-Fashion-Shoulder-Bags-Casual-Leather-Messenger-Bag-Large-Capacity-Handbag-Fashion-Womens-Bag-Small-Shoulder-Bag-for-Men-Khaki-One-Size_6dc3f6fc-b102-486c-a87a-3dff22734c0c.f870430d06f8451d986542b6385eb79c.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',
    productName: 'Sweater',
    sellerName: 'Uniqlo',
    price: 29.99,
    discount: 8,
    rating: 4.2,
    category: 'Skirts',
  ),
  Product(
    imageUrl:
        'https://thumbs.dreamstime.com/b/sport-shoes-isolated-white-background-running-training-116201104.jpg',
    productName: 'Denim Skirt',
    sellerName: 'Levi\'s',
    price: 34.99,
    discount: 15,
    rating: 4.3,
    category: 'Jeans',
  ),
  Product(
    imageUrl:
        'https://c8.alamy.com/comp/E9PENE/lightweight-running-shoes-for-athletics-on-a-white-background-E9PENE.jpg',
    productName: 'Crop Top',
    sellerName: 'Forever 21',
    price: 19.99,
    discount: 10,
    rating: 4.2,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://image.made-in-china.com/2f0j00wHlkJPDYlbqs/Men-s-Autumn-and-Winter-Pullover-Long-Sleeved-Hoodie-Fashion-Casual-Sports.webp',
    productName: 'Hoodie',
    sellerName: 'Nike',
    price: 49.99,
    discount: 15,
    rating: 4.6,
    category: 'Blouses',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/blue-jeans-white-background-view-from_93675-147512.jpg',
    productName: 'Track Jacket',
    sellerName: 'Adidas',
    price: 59.99,
    discount: 20,
    rating: 4.4,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://www.dhresource.com/webp/m/260x260/f2/albu/g22/M00/6E/30/rBVaE2KUNXaAO2qKAAEEUOZQlYA411.jpg',
    productName: 'Blazer',
    sellerName: 'Zara',
    price: 69.99,
    discount: 10,
    rating: 4.5,
    category: 'Dresses',
  ),
  Product(
    imageUrl:
        'https://as2.ftcdn.net/v2/jpg/02/45/01/11/1000_F_245011176_i4qWO79NPTyfGL1v6xDRGGHjkdQBWNb5.jpg',
    productName: 'Casual Dress',
    sellerName: 'Zara',
    price: 49.99,
    discount: 20,
    rating: 4.7,
    category: 'Crop Tops',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/white-hoodie-with-white-hoodie-it_1103290-51915.jpg?w=360',
    productName: 'Long Coat',
    sellerName: 'Mango',
    price: 109.99,
    discount: 20,
    rating: 4.8,
    category: 'Sleeveless',
  ),
  Product(
    imageUrl:
        'https://img.freepik.com/premium-photo/men-s-casual-clothes-accessories-shirt-t-shirt-jeans-isolated-white-background_142957-1129.jpg',
    productName: 'Yoga Pants',
    sellerName: 'Lululemon',
    price: 49.99,
    discount: 12,
    rating: 4.6,
    category: 'Dresses',
  ),
  Product(
    imageUrl:
        'https://media.istockphoto.com/id/656678076/photo/polo-t-shirts.jpg?s=612x612&w=0&k=20&c=Nc-tcWfSWo6IIlFbh-xAKD63WnDBN56HlC8J0GBAINM=',
    productName: 'Pullover',
    sellerName: 'Zara',
    price: 39.99,
    discount: 12,
    rating: 4.3,
    category: 'Blouses',
  ),
];
