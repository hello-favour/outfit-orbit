import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/profile/widgets/profile_row.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Profile",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    2.sH,
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: AppColors.color2,
                          backgroundImage:
                              AssetImage(Assets.images.image1.path),
                        ),
                        Gap(2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Matilda Brown",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              "matildabrown@gmail.com",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.greyColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    3.sH,
                    ProfileRow(
                      title: 'My order',
                      subTitle: "matildabrown@gmail.com",
                      onTap: () {},
                    ),
                    4.sH,
                    ProfileRow(
                      title: 'Shipping Addresses',
                      subTitle: "3 Addresses",
                      onTap: () {},
                    ),
                    4.sH,
                    ProfileRow(
                      title: 'Payment methods',
                      subTitle: "Visa **34",
                      onTap: () {},
                    ),
                    4.sH,
                    ProfileRow(
                      title: 'Settings',
                      subTitle: "Notification, password",
                      onTap: () {
                        context.push(AppRoutes.setting);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
