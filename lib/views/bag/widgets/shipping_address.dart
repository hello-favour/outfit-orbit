import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Jane Doe",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Change",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.primaryColor,
                    ),
              ),
            ],
          ),
          1.sH,
          Text(
            "3 Newbrige Court",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          1.sH,
          Text(
            "Chino Hills, CA 91709, United States",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
