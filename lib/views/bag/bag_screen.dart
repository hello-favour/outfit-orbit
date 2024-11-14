import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/bag/widgets/bag_card.dart';
import 'package:sizer/sizer.dart';

class BagScreen extends ConsumerStatefulWidget {
  const BagScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BagScreenState();
}

class _BagScreenState extends ConsumerState<BagScreen> {
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
                      "My Bag",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    2.sH,
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 2.h),
                            child: BagCard(
                              title: "NEW",
                              imgUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS3_-mS0I_N58RA_7xezmysJK942oglJmv0AyXXWNNItUFsLwIHt3ZOFpfmM31oHxKfDM&usqp=CAU",
                              onTap: () {
                                context.push(AppRoutes.categoriesView);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    2.sH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total amount:",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColors.greyColor,
                                  ),
                        ),
                        Text(
                          "124\$",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    1.sH,
                    appButton(
                      context,
                      title: "CHECK OUT",
                      onTap: () {
                        context.push(AppRoutes.checkOutScreen);
                      },
                    ),
                    2.sH,
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
