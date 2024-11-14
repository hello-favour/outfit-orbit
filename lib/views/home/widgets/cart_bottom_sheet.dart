import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/providers/gender_category_providerr.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';

class CartBottomSheet extends ConsumerWidget {
  CartBottomSheet({super.key});

  final List<String> categories = ['XS', 'S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryProvider);

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.sp),
        topRight: Radius.circular(25.sp),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.50,
        padding: EdgeInsets.only(top: 2.sh, left: 2.w, right: 2.w),
        width: double.infinity,
        color: AppColors.whiteColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            children: [
              Text(
                "Select size",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              2.sH,
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 15.sp,
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
                        borderRadius: BorderRadius.circular(15.sp),
                        child: Container(
                          width: 22.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.greyColor,
                                spreadRadius: 50,
                                blurRadius: 50,
                                offset: const Offset(0, 10),
                              ),
                            ],
                            color: isSelected
                                ? AppColors.primaryColor
                                : AppColors.whiteColor,
                          ),
                          padding: EdgeInsets.all(10.sp),
                          alignment: Alignment.center,
                          child: Text(
                            category,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: isSelected
                                          ? AppColors.whiteColor
                                          : AppColors.blackColor,
                                    ),
                          ),
                        ),
                      ),
                    );
                  }),
              3.sH,
              const Divider(),
              2.sH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Size info",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(AppRoutes.filter);
                    },
                    child: const Icon(
                      Icons.chevron_right,
                    ),
                  ),
                ],
              ),
              2.sH,
              const Divider(),
              const Spacer(),
              appButton(
                context,
                title: "ADD TO CART",
                onTap: () {
                  context.push(AppRoutes.shortDress);
                },
              ),
              2.sH,
            ],
          ),
        ),
      ),
    );
  }
}
