import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:sizer/sizer.dart';

class SearchResultScreen extends ConsumerWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              context.push(AppRoutes.home);
            },
            child: Icon(
              Icons.search,
              color: AppColors.primaryColor,
              size: 30.sp,
            ),
          ),
          1.sH,
          Center(
            child: Text(
              "Finding similar \nresults...",
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
