import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';

class ContinueShoppingScreen extends ConsumerWidget {
  const ContinueShoppingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.background.path,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            10.sH,
            Text(
              "Success!",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "Your order will be  delivered soon.\nThank you for choosing our app!",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            2.sH,
            SizedBox(
              width: 50.w,
              child: appButton(
                context,
                title: "Continue shopping",
                onTap: () {
                  context.push(AppRoutes.successScreen);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
