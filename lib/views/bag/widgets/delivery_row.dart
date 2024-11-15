import 'package:flutter/material.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';

class DeliveryRow extends StatelessWidget {
  final String keyText;
  final String valueText;
  final FontWeight? fontWeight;
  const DeliveryRow({
    super.key,
    required this.keyText,
    required this.valueText,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyText,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: fontWeight,
                color: AppColors.greyColor,
              ),
        ),
        Text(
          valueText,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
