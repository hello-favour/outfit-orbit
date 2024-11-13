// Category index provider
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:outfitorbit/models/product.dart';

final selectedProvider = StateProvider<int>((ref) => 0);

// Filtered products provider
final filteredProductsProvider = Provider<List<Product>>((ref) {
  final selectedIndex = ref.watch(selectedProvider);
  final selectedCategory = [
    'All',
    'Crop Tops',
    'Sleeveless',
    'Blouses',
    'Skirts',
    'Dresses',
    'Jeans'
  ][selectedIndex];

  // Return all products if "All" is selected; otherwise, filter by category
  if (selectedCategory == 'All') {
    return products;
  } else {
    return products
        .where((product) => product.category == selectedCategory)
        .toList();
  }
});
