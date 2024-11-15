import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onTap;
  final String iconText;
  const AddButton({
    super.key,
    required this.onTap,
    required this.iconText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 6.h,
        width: 6.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Center(
          child: Text(
            iconText,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColors.greyColor,
                ),
          ),
        ),
      ),
    );
  }
}
