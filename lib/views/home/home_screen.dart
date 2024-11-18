import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/models/product.dart';
import 'package:outfitorbit/utils/app_button.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/home/widgets/product_card.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 50.h,
            pinned: true,
            backgroundColor: AppColors.primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    Assets.images.image2.path,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 30,
                    left: 5.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fashion \nsale",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 30.sp,
                                color: AppColors.whiteColor,
                                height: 0.9,
                              ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: 50.w,
                          child: appButton(
                            onTap: () {},
                            context,
                            title: "Check",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: ListView(
            children: [
              // Sale Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      2.sH,
                      Text(
                        "Sale",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        "Super summer sale!",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(AppRoutes.salesProduct);
                    },
                    child: Text(
                      "View all",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              2.sH,
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: salesProducts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: ProductCard(
                        product: salesProducts[index],
                      ),
                    );
                  },
                ),
              ),
              3.sH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        "You've never seen it before!",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(AppRoutes.newProduct);
                    },
                    child: Text(
                      "View all",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              2.sH,
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: newProducts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: ProductCard(
                        product: newProducts[index],
                      ),
                    );
                  },
                ),
              ),
              3.sH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Arrived",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        "You've never seen it before!",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(AppRoutes.arrivedProduct);
                    },
                    child: Text(
                      "View all",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              2.sH,
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrivedProducts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: ProductCard(
                        product: arrivedProducts[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
