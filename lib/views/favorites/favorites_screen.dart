import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_colors.dart';
import 'package:outfitorbit/core/constants/app_router.dart';
import 'package:outfitorbit/providers/women_provider.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/favorites/widgets/favorites_card.dart';
import 'package:sizer/sizer.dart';

class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(selectedProvider);
    // Watch the filtered products based on the selected category
    final List<String> categories = ['All', 'Women', 'Men', 'Boys', 'Girls'];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            2.sH,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            2.sH,
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Favorites",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    2.sH,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          categories.length,
                          (index) => GestureDetector(
                            onTap: () {
                              ref.read(selectedProvider.notifier).state = index;
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.sp),
                              padding: EdgeInsets.all(8.sp),
                              width: 30.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99.sp),
                                color: selectedIndex == index
                                    ? AppColors.primaryColor
                                    : AppColors.blackColor,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                categories[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    2.sH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.push(AppRoutes.filter);
                              },
                              child: const Icon(
                                Icons.filter_list,
                              ),
                            ),
                            Gap(2.w),
                            Text(
                              "Filters",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "Price: lowest to high",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const Spacer(),
                      ],
                    ),
                    2.sH,
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 2.h),
                            child: FavoritesCard(
                              title: "NEW",
                              imgUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS3_-mS0I_N58RA_7xezmysJK942oglJmv0AyXXWNNItUFsLwIHt3ZOFpfmM31oHxKfDM&usqp=CAU",
                              onTap: () {
                                context.push(AppRoutes.categoriesView);
                              },
                            ),
                          );
                        },
                      ),
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
