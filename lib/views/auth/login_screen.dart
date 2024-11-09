import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Text(
        "data",
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.blackColor,
            ),
      ),
    );
  }
}
