import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outfitorbit/providers/women_provider.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/home/widgets/product_card.dart';
import 'package:sizer/sizer.dart';

class WomenTopScreen extends ConsumerWidget {
  const WomenTopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List of categories
    final List<String> categories = [
      'All',
      'Crop Tops',
      'Sleeveless',
      'Blouses',
      'Skirts',
      'Dresses',
      'Jeans'
    ];

    // Watch selected category index
    final selectedIndex = ref.watch(selectedCategoryProvider);
    // Watch filtered products
    final filteredProducts = ref.watch(filteredProductsProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            2.sH,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/left.svg'),
                  ),
                  const Spacer(),
                  Text(
                    "Women's Tops",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            2.sH,
            // Category Tabs
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          categories.length,
                          (index) => GestureDetector(
                            onTap: () {
                              ref
                                  .read(selectedCategoryProvider.notifier)
                                  .state = index;
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.sp),
                              padding: EdgeInsets.all(8.sp),
                              width: 30.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99.sp),
                                color: selectedIndex == index
                                    ? Colors.red
                                    : Colors.black,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                categories[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: Colors.white,
                                      // selectedIndex == index
                                      //     ? Colors.black
                                      //     : Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    2.sH,
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 0.6,
                        ),
                        itemCount: filteredProducts.length,
                        itemBuilder: (context, index) => ProductCard(
                          product: filteredProducts[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
