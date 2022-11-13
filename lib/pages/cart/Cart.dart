// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries/constants.dart';
import 'package:groceries/pages/cart/Body.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Body(),
    );
  }
}
