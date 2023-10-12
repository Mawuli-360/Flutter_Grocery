import 'package:flutter/material.dart';
import 'package:groceries/shared/temp/home_data.dart';
import 'package:groceries/shared/widgets/components/card_item.dart';
import 'package:sizer/sizer.dart';

Widget buildCard() {
  return SizedBox(
    height: 30.h,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: HomeData.items.length,
      itemBuilder: ((context, index) {
        return buildProductCard(item: HomeData.items[index]);
      }),
    ),
  );
}


