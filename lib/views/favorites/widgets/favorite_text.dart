import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';

class FavoriteText extends StatelessWidget {
  final String title;
  final String text;
  const FavoriteText({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.greyColor,
                ),
          ),
          TextSpan(
            text: text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
