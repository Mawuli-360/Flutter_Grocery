import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groceries/feature/shop/presentation/views/components/card_build.dart';
import 'package:groceries/feature/shop/presentation/views/components/carousel.dart';
import 'package:groceries/feature/shop/presentation/views/components/widgets.dart';
import 'package:groceries/shared/resource/app_images.dart';
import 'package:groceries/shared/resource/app_strings.dart';
import 'package:groceries/shared/widgets/components/search.dart';
import 'package:sizer/sizer.dart';

class Shop extends ConsumerWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          width: double.infinity,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 10.h,
                  width: 15.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AppImages.logo, fit: BoxFit.fitHeight)),
                ),
                buildHeader(),
                buildSearchBar(),
                buildCarousel(),
                buildCategoryTitle(
                    title: AppStrings.exclusiveOffer, onPressed: null),
                buildCard(),
                buildCategoryTitle(
                    title: AppStrings.bestSelling, onPressed: null),
                buildCard(),
                buildCategoryTitle(
                    title: AppStrings.groceries, onPressed: null),
                buildCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
