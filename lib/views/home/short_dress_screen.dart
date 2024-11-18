import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/models/product.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/utils/select_outline_button.dart';
import 'package:outfitorbit/views/home/widgets/product_card.dart';
import 'package:outfitorbit/views/home/widgets/row_price.dart';
import 'package:sizer/sizer.dart';

class ShortDressScreen extends ConsumerWidget {
  const ShortDressScreen({super.key});

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
                    "Short dress",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            2.sH,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: double.infinity,
                      child: Image.asset(
                        Assets.images.cloth.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: selectOutlineButton(
                                  context,
                                  title: "Size",
                                  borderColor: AppColors.primaryColor,
                                  onTap: () {},
                                ),
                              ),
                              Gap(2.w),
                              Expanded(
                                child: selectOutlineButton(
                                  context,
                                  title: "Black",
                                  borderColor: AppColors.borderColor,
                                  onTap: () {},
                                ),
                              ),
                              Gap(2.w),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(9.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          2.sH,
                          const RowPrice(),
                          1.sH,
                          Row(
                            children: List.generate(
                              5,
                              (index) => const Icon(Icons.star,
                                  color: Colors.amber, size: 14),
                            ),
                          ),
                          1.sH,
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ante nisi, eleifend euismod lobortis non, varius non ante. Suspendisse potenti. Donec blandit nisl nisi, et consequat felis convallis ut. Nunc rhoncus bibendum metus lobortis imperdiet. Curabitur cursus leo in varius lacinia. Nulla nulla libero, rutrum sit amet molestie in, imperdiet.",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          2.sH,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "You can also like this",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                "12 items",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: AppColors.greyColor,
                                    ),
                              ),
                            ],
                          ),
                          2.sH,
                          SizedBox(
                            height: 30.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: newProducts.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ProductCard(
                                    product: newProducts[index],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        height: 10.h,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: appButton(
          context,
          title: "ADD TO CART",
          onTap: () {
            context.pop();
          },
        ),
      ),
    );
  }
}
