import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outfitorbit/gen/assets.gen.dart';
import 'package:outfitorbit/utils/extension.dart';
import 'package:outfitorbit/views/shop/women_screen.dart';
import 'package:sizer/sizer.dart';

class ShopScreen extends ConsumerStatefulWidget {
  const ShopScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShopScreenState();
}

class _ShopScreenState extends ConsumerState<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              2.sH,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(Assets.icons.left),
                    ),
                    const Spacer(),
                    Text(
                      "Categories",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              2.sH,
              TabBar(
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: 'Women'),
                  Tab(text: 'Men'),
                  Tab(text: 'Kids'),
                ],
              ),
              2.sH,
              const Expanded(
                child: TabBarView(
                  children: [
                    WomenScreen(),
                    Center(child: Text("Women's Products")),
                    Center(child: Text("Kids' Products")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
