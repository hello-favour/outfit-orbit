import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/core/constants/outfit_textfield.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';

class AddNewCard extends ConsumerWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.60,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              2.sH,
              Text(
                "Add new card",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              2.sH,
              const OutfitTextfield(
                label: "Name on card",
              ),
              2.sH,
              const OutfitTextfield(
                label: "Card number",
              ),
              2.sH,
              const OutfitTextfield(
                label: "Expire Date",
              ),
              2.sH,
              const OutfitTextfield(
                label: "CVV",
              ),
              3.sH,
              appButton(
                context,
                title: "ADD CARD",
                onTap: () {
                  context.push(AppRoutes.shippingAddress);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
