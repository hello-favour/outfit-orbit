import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/core/constants/text_theme.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        title: 'OutFit Orbit',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: AppTextTheme.lightTextTheme,
          scaffoldBackgroundColor: AppColors.whiteColor,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
        ),
        routerConfig: CustomNavigationHelper.router,
      ),
    );
  }
}
