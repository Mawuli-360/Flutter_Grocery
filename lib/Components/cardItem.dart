// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:groceries/constants.dart';

class cardItem {
  String image;
  String itemName;
  String itemDescrip;

// Color(0x1A2195F3)
// Color(0x09E91E62)

  cardItem({
    required this.image,
    required this.itemName,
    required this.itemDescrip,
  });
}

Padding card({required cardItem item}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      height: 30.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Center(child: Image.asset(item.image)),
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
                  'GHC 20.00',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Container(
                  height: 6.h,
                  width: 6.h,
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
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
