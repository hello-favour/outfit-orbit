import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

Container appButton(BuildContext context, {required title}) {
  return Container(
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
  );
}
