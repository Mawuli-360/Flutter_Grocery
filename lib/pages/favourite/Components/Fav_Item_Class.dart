// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FavItem {
  String price;
  String img;
  String proName;

  FavItem({
    required this.img,
    required this.price,
    required this.proName,
  });
}

Column favCard({required FavItem item}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 12.h,
          child: Row(
            children: [
              Expanded(child: Image.asset(item.img)),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.proName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14.sp),
                            ),
                            Text(
                              "1kg , Price",
                              style: TextStyle(fontSize: 12.sp),
                            )
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              item.price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13.sp),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(
        color: Colors.grey.shade300,
        height: 4.h,
        thickness: 0.8,
        indent: 7.w,
        endIndent: 7.w,
      ),
    ],
  );
}
