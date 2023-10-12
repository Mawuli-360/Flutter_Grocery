// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:groceries/constants.dart';

class CardItem {
  AssetImage image;
  String itemName;
  String itemDescrip;
  String itemPrice;
  CardItem({
    required this.image,
    required this.itemName,
    required this.itemDescrip,
    required this.itemPrice,
  });
}

Widget buildProductCard({required CardItem item}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      height: 30.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 14.h,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(fit: BoxFit.contain, image: item.image)),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.itemName,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                Text(
                  item.itemDescrip,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: Colors.black26),
                ),
              ],
            )),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.itemPrice,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Container(
                  height: 6.h,
                  width: 6.h,
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 4.5.h,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    ),
  );
}
