import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/favorites/widgets/favorite_text.dart';
import 'package:sizer/sizer.dart';

class BagCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  final VoidCallback onTap;
  const BagCard({
    super.key,
    required this.title,
    required this.imgUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 14.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10.sp),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 0.5,
                  offset: const Offset(0, 0.5),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.sp),
                            bottomRight: Radius.circular(10.sp),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              imgUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.sp),
                          child: Container(
                            padding: EdgeInsets.all(5.sp),
                            color: AppColors.blackColor,
                            child: Text(
                              "New",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lime",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.greyColor,
                                  ),
                            ),
                            Icon(
                              Icons.cancel,
                              color: AppColors.greyColor,
                            ),
                          ],
                        ),
                        Text(
                          "Shirt",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        0.sH,
                        Row(
                          children: [
                            const FavoriteText(
                              title: 'Color: ',
                              text: 'Blue',
                            ),
                            Gap(2.w),
                            const FavoriteText(
                              title: 'Color:',
                              text: ' L',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$32",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Row(
                              children: List.generate(
                                5,
                                (index) => const Icon(Icons.star,
                                    color: Colors.amber, size: 14),
                              ),
                            ),
                            Text(
                              "(10)",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.sp),
            child: Container(
              padding: EdgeInsets.all(7.sp),
              color: AppColors.primaryColor,
              alignment: Alignment.center,
              child: Icon(
                Icons.shopping_bag,
                size: 16.sp,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
