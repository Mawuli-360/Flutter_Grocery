import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'item_quantity.dart';

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

Widget cartCard({required CartItem item}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 14.h,
          child: Row(
            children: [
              Expanded(child: Image.asset(item.img)),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                                  const Text("1kg , Price")
                                ],
                              )),
                          const Expanded(
                              child: Icon(
                            Icons.close,
                            color: Colors.grey,
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(
                            flex: 2,
                            child: ItemQuantity(),
                          ),
                          Expanded(
                              child: Text(
                            item.price,
                            style: const TextStyle(fontWeight: FontWeight.w900),
                          ))
                        ],
                      ),
                    ],
                  ),
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
