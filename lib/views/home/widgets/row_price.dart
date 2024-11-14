import 'package:flutter/material.dart';

class RowPrice extends StatelessWidget {
  const RowPrice({
    super.key,
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
              "H&M",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Short black dress",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        Text(
          "\$19.99",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
