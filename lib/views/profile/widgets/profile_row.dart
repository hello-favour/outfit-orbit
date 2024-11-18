import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';

class ProfileRow extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  const ProfileRow({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.greyColor,
                  ),
            ),
          ],
        ),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
