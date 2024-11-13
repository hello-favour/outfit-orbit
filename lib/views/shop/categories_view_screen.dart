import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';

class CategoriesViewScreen extends ConsumerWidget {
  const CategoriesViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                      context.pop();
                    },
                    child: SvgPicture.asset(Assets.icons.left),
                  ),
                  const Spacer(),
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.headlineSmall,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: appButton(
                        onTap: () {
                          context.push(AppRoutes.womenTop);
                        },
                        context,
                        title: "VIEW ALL ITEMS",
                      ),
                    ),
                    2.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Text(
                        "Choose category",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: AppColors.greyColor,
                            ),
                      ),
                    ),
                    2.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Tops",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Dresses",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Pants",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Blazers",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Jeans",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Skirts",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Skirts & Blouses",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Shorts",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Outerwear",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ),
                    1.sH,
                    const Divider(),
                    1.sH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Knitwear",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
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
