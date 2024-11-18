import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/outfit_textfield.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/profile/widgets/password_change_sheet.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool check = true;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            2.sH,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/left.svg'),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            2.sH,
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Settings",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      1.sH,
                      Text(
                        "Personal Information",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      1.sH,
                      const OutfitTextfield(
                        label: "Full name",
                      ),
                      2.sH,
                      const OutfitTextfield(
                        label: "Date of Birth",
                      ),
                      3.sH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Password",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.sp),
                                    topRight: Radius.circular(20.sp),
                                  ),
                                ),
                                context: context,
                                builder: (context) =>
                                    const PasswordChangeSheet(),
                              );
                            },
                            child: Text(
                              "Change",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.greyColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const OutfitTextfield(
                        label: "Password",
                      ),
                      2.sH,
                      Text(
                        "Notifications",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      2.sH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sales",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          CupertinoSwitch(
                            value: check,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                      2.sH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New arrivals",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          CupertinoSwitch(
                            value: check,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                      2.sH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery status changes",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          CupertinoSwitch(
                            value: check,
                            onChanged: (value) {},
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
