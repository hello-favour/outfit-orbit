// Notifier to manage category selection
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SizeSelectProvider extends Notifier<String> {
  @override
  String build() => 'All';

  void selectCategory(String category) {
    state = category;
  }
}

// Provider for CategoryNotifier
final selectedCategoryProvider =
    NotifierProvider<SizeSelectProvider, String>(SizeSelectProvider.new);
