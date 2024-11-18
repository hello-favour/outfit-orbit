import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/core/constants/outfit_textfield.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';

class EditShippingAddressScreen extends ConsumerWidget {
  const EditShippingAddressScreen({super.key});

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
                    "Adding Shipping Address",
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      2.sH,
                      const OutfitTextfield(
                        label: "Full name",
                      ),
                      2.sH,
                      const OutfitTextfield(
                        label: "Address",
                      ),
                      2.sH,
                      const OutfitTextfield(
                        label: "City",
                      ),
                      2.sH,
                      const OutfitTextfield(
                        label: "State/Province/Region",
                      ),
                      2.sH,
                      const OutfitTextfield(
                        label: "Zip Code (Postal Code)",
                      ),
                      2.sH,
                      const OutfitTextfield(
                        label: "Country",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 6.w),
              child: appButton(
                context,
                title: "SAVE ADDRESS",
                onTap: () {
                  context.push(AppRoutes.continueShopping);
                },
              ),
            ),
            Gap(5.h),
          ],
        ),
      ),
    );
  }
}
