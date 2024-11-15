import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

Widget appButton(
  BuildContext context, {
  required String title,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: Size.infinite.width,
      height: 6.h,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(99),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.whiteColor,
            ),
      ),
    ),
  );
}
