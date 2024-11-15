import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/bag/widgets/add_button.dart';
import 'package:outfitorbit/views/favorites/widgets/favorite_text.dart';
import 'package:sizer/sizer.dart';

class BagCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  final VoidCallback onTap;
  const BagCard({
    super.key,
    required this.title,
    required this.imgUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 14.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10.sp),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 0.5,
              offset: const Offset(0, 0.5),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.sp),
                    bottomRight: Radius.circular(10.sp),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      imgUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 5.w, right: 2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shirt",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.more_vert,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                    0.sH,
                    Row(
                      children: [
                        const FavoriteText(
                          title: 'Color: ',
                          text: 'Blue',
                        ),
                        Gap(2.w),
                        const FavoriteText(
                          title: 'Color:',
                          text: ' L',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AddButton(
                              onTap: () {},
                              iconText: "-",
                            ),
                            Gap(2.w),
                            Text(
                              "1",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Gap(2.w),
                            AddButton(
                              onTap: () {},
                              iconText: "+",
                            ),
                          ],
                        ),
                        Text(
                          "\$32",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
