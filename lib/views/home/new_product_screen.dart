import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/models/product.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/home/widgets/product_card.dart';
import 'package:sizer/sizer.dart';

class NewProductScreen extends ConsumerWidget {
  const NewProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                      context.pop();
                    },
                    child: SvgPicture.asset(Assets.icons.left),
                  ),
                  const Spacer(),
                  Text(
                    "New Product",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            2.sH,
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.sp,
                  crossAxisSpacing: 16.sp,
                  childAspectRatio: 0.6,
                ),
                itemCount: newProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: newProducts[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
