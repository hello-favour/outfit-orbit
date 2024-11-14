import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

Widget selectOutlineButton(
  BuildContext context, {
  required String title,
  required VoidCallback onTap,
  required Color borderColor,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 4.w),
    width: Size.infinite.width,
    height: 4.5.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.sp),
      border: Border.all(
        color: borderColor,
      ),
    ),
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.blackColor,
              ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Icon(
            Icons.keyboard_arrow_down,
          ),
        ),
      ],
    ),
  );
}
