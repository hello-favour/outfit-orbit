import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

Container banner(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.sp),
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(10.sp),
    ),
    child: Column(
      children: [
        Text(
          "SUMMER SALES",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.whiteColor,
              ),
        ),
        Text(
          "up to 50% off",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.whiteColor,
              ),
        ),
      ],
    ),
  );
}
