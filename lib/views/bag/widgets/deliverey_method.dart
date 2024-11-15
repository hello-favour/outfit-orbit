import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class DelivereyMethod extends StatelessWidget {
  final String logo;
  final String daysText;
  const DelivereyMethod({
    super.key,
    required this.logo,
    required this.daysText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 8.h,
      padding: EdgeInsets.all(10.sp),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logo,
            fit: BoxFit.fill,
          ),
          Text(
            daysText,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.greyColor,
                ),
          )
        ],
      ),
    );
  }
}
