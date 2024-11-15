import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/bag/widgets/deliverey_method.dart';
import 'package:outfitorbit/views/bag/widgets/delivery_row.dart';
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
                    const ShippingAddress(
                      edit: false,
                    ),
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
                    2.sH,
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: DelivereyMethod(
                            logo: Assets.images.dhl.path,
                            daysText: "2-3 days",
                          ),
                        ),
                        Gap(3.w),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "**** **** **** 3947",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                    5.sH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "Method",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                        ),
                      ],
                    ),
                    2.sH,
                    Row(
                      children: [
                        Expanded(
                          child: DelivereyMethod(
                            logo: Assets.images.fedEx.path,
                            daysText: "2-3 days",
                          ),
                        ),
                        Gap(2.w),
                        Expanded(
                          child: DelivereyMethod(
                            logo: Assets.images.usps.path,
                            daysText: "2-3 days",
                          ),
                        ),
                        Gap(2.w),
                        Expanded(
                          child: DelivereyMethod(
                            logo: Assets.images.dhl.path,
                            daysText: "2-3 days",
                          ),
                        ),
                      ],
                    ),
                    3.sH,
                    const DeliveryRow(
                      keyText: "Order:",
                      valueText: "112\$",
                    ),
                    2.sH,
                    const DeliveryRow(
                      keyText: "Delivery:",
                      valueText: "15\$",
                    ),
                    2.sH,
                    const DeliveryRow(
                      keyText: "Summary:",
                      fontWeight: FontWeight.bold,
                      valueText: "127\$",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 6.w),
              child: appButton(
                context,
                title: "SUBMIT ORDER",
                onTap: () {},
              ),
            ),
            Gap(5.h),
          ],
        ),
      ),
    );
  }
}
