// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:groceries/pages/cart/Components/cart_item_class.dart';
import 'package:sizer/sizer.dart';

class Body extends StatefulWidget {
  Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<CartItem> items = [
    CartItem(
        img: "assets/images/pepper.png",
        price: "GHC 13.30",
        proName: "Long Pepper Red/Green"),
    CartItem(
        img: "assets/images/banana.png",
        price: "GHC 15.50",
        proName: "Fresh Banana"),
    CartItem(
        img: "assets/images/milo.png", price: "GHC 18.00", proName: "Milo"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            'My Cart',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          Divider(
            height: 5.h,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return cartCard(item: items[index]);
                }),
          )
        ],
      ),
    );
  }
}
