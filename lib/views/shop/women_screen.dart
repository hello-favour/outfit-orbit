import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/shop/widgets/women_banner.dart';
import 'package:outfitorbit/views/shop/widgets/women_product_card.dart';
import 'package:sizer/sizer.dart';

class CategoriesCard extends ConsumerWidget {
  const CategoriesCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                womenBanner(context),
                2.sH,
                WomenProductCard(
                  title: "NEW",
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS3_-mS0I_N58RA_7xezmysJK942oglJmv0AyXXWNNItUFsLwIHt3ZOFpfmM31oHxKfDM&usqp=CAU",
                  onTap: () {
                    context.push(AppRoutes.categoriesView);
                  },
                ),
                2.sH,
                WomenProductCard(
                  title: "Clothes",
                  imgUrl:
                      "https://assets.thenorthface.com/images/t_img/c_pad,b_white,f_auto,h_650,w_555,e_sharpen:70/NF0A88ZW1OM-HERO/Womens-Evolution-Hoodie-in-Algae-Blue.png",
                  onTap: () {
                    context.push(AppRoutes.categoriesView);
                  },
                ),
                2.sH,
                WomenProductCard(
                  title: "Shoes",
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS3_-mS0I_N58RA_7xezmysJK942oglJmv0AyXXWNNItUFsLwIHt3ZOFpfmM31oHxKfDM&usqp=CAU",
                  onTap: () {
                    context.push(AppRoutes.categoriesView);
                  },
                ),
                2.sH,
                WomenProductCard(
                  title: "Accessories",
                  imgUrl:
                      "https://assets.thenorthface.com/images/t_img/c_pad,b_white,f_auto,h_650,w_555,e_sharpen:70/NF0A88ZW1OM-HERO/Womens-Evolution-Hoodie-in-Algae-Blue.png",
                  onTap: () {
                    context.push(AppRoutes.categoriesView);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
