// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries/constants.dart';
import 'package:groceries/pages/cart/Components/item_quantity.dart';
import 'package:sizer/sizer.dart';

class CartItem {
  String img;
  String price;
  String proName;

  CartItem({
    required this.img,
    required this.price,
    required this.proName,
  });
}

Column cartCard({required CartItem item}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.red,
          height: 12.h,
          child: Row(
            children: [
              Expanded(child: Image.asset(item.img)),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.proName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.sp),
                                ),
                                Text("1kg , Price")
                              ],
                            )),
                        Expanded(
                            child: Icon(
                          Icons.close,
                          color: Colors.grey,
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ItemQuantity(),
                        ),
                        Expanded(
                            child: Text(
                          item.price,
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(
        color: Colors.grey.shade300,
        thickness: 0.8,
        indent: 7.w,
        endIndent: 7.w,
      ),
    ],
  );
}


