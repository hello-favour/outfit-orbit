import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/bag/widgets/shipping_address.dart';
import 'package:sizer/sizer.dart';

class CheckoutScreen extends ConsumerWidget {
  const CheckoutScreen({super.key});

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
                    "Checkout",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Spacer(),
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
                      "Shipping address",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    2.sH,
                    const ShippingAddress(),
                    5.sH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "Change",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                        ),
                      ],
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
