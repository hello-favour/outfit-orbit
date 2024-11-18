import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/outfit_textfield.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';

class PasswordChangeSheet extends ConsumerWidget {
  const PasswordChangeSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.sp),
          topRight: Radius.circular(20.sp),
        ),
      ),
      child: Column(
        children: [
          Text(
            "Password Change",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          2.sH,
          const OutfitTextfield(
            label: "Old Password",
          ),
          2.sH,
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot Password?",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.greyColor,
                    ),
              ),
            ),
          ),
          2.sH,
          const OutfitTextfield(
            label: "New Password",
          ),
          2.sH,
          const OutfitTextfield(
            label: "Repeat New Password",
          ),
          const Spacer(),
          appButton(
            context,
            title: "SAVE PASSWORD",
            onTap: () {},
          ),
          2.sH,
        ],
      ),
    );
  }
}
