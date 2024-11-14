import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/app_button_outline.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';
import '../../providers/gender_category_providerr.dart';

final priceProvider = StateProvider<double>((ref) => 50);

class FilterScreen extends ConsumerWidget {
  FilterScreen({super.key});

  final List<String> categories = ['All', 'Women', 'Men', 'Boys', 'Girls'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryProvider);
    final price = ref.watch(priceProvider);
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
                    "Filters",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      2.sH,
                      Text(
                        "Price range",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      2.sH,
                      Text(
                        "\$${price.toStringAsFixed(0)}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Slider(
                        value: price,
                        onChanged: (newValue) {
                          ref.read(priceProvider.notifier).state = newValue;
                        },
                        min: 0,
                        max: 600,
                        divisions: 100,
                        label: "\$${price.toStringAsFixed(0)}",
                        activeColor: AppColors.primaryColor,
                        inactiveColor: AppColors.greyColor,
                      ),
                      const Divider(),
                      2.sH,
                      Text(
                        "Colors",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      2.sH,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            5,
                            (index) => Container(
                              margin: EdgeInsets.only(right: 10.sp),
                              width: 25.sp,
                              height: 25.sp,
                              decoration: BoxDecoration(
                                color: AppColors.color1,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColors.primaryColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Divider(),
                      2.sH,
                      Text(
                        "Sizes",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      2.sH,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                          5,
                          (index) => Padding(
                            padding: EdgeInsets.only(right: 5.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.sp),
                              child: Container(
                                padding: EdgeInsets.all(10.sp),
                                color: AppColors.primaryColor,
                                child: Text(
                                  "XS",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: AppColors.whiteColor,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      2.sH,
                      const Divider(),
                      2.sH,
                      Text(
                        "Category",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      2.sH,
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10.sp,
                          crossAxisSpacing: 10.sp,
                          childAspectRatio: 2.5,
                        ),
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          final category = categories[index];
                          final isSelected = selectedCategory == category;

                          return GestureDetector(
                            onTap: () {
                              ref
                                  .read(selectedCategoryProvider.notifier)
                                  .selectCategory(category);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.sp),
                              child: Container(
                                width: 22.w,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColors.primaryColor
                                      : AppColors.whiteColor,
                                  border: Border.all(
                                    color:
                                        AppColors.borderColor.withOpacity(0.5),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.greyColor,
                                      spreadRadius: 50,
                                      blurRadius: 50,
                                      offset: const Offset(0, 10),
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.all(10.sp),
                                alignment: Alignment.center,
                                child: Text(
                                  category,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: isSelected
                                            ? AppColors.whiteColor
                                            : AppColors.blackColor,
                                      ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        height: 15.h,
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
        child: Row(
          children: [
            Expanded(
              child: appButtonOutline(
                context,
                title: "Discard",
                onTap: () {
                  context.pop();
                },
              ),
            ),
            Gap(5.w),
            Expanded(
                child: appButton(
              context,
              title: "Apply",
              onTap: () {
                context.pop();
              },
            )),
          ],
        ),
      ),
    );
  }
}
