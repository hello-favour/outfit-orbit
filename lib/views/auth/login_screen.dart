import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:outfitorbit/core/constants/outfit_textfield.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/utils/social_button.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.sH,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(Assets.icons.left),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Gap(5.h),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Login",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      3.sH,
                      const OutfitTextfield(
                        label: "Email",
                      ),
                      3.sH,
                      const OutfitTextfield(
                        label: "Password",
                      ),
                      3.sH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot your password?",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Gap(2.h),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              Assets.icons.arrow,
                              height: 2.h,
                            ),
                          ),
                        ],
                      ),
                      7.sH,
                      GestureDetector(
                        onTap: () {},
                        child: appButton(
                          context,
                          title: "LOGIN",
                        ),
                      ),
                      Gap(10.h),
                      Center(
                        child: Text(
                          "Or login with social account",
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Gap(5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: socialButton(icon: Assets.icons.google),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: socialButton(icon: Assets.icons.facebook),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
