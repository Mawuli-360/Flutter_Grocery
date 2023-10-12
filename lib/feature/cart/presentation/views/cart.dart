import 'package:flutter/material.dart';
import 'package:groceries/feature/cart/presentation/views/components/cart_item_class.dart';
import 'package:sizer/sizer.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
                .headlineSmall!
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
