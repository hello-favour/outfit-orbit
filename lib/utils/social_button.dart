import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

Container socialButton({required icon}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 10.sp),
    width: Size.fromWidth(13.h).width,
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(5.dp),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 0.5,
          offset: const Offset(0, 0.5),
        ),
      ],
    ),
    child: SvgPicture.asset(
      icon,
      height: 4.h,
    ),
  );
}
