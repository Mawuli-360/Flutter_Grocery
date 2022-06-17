// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries/Homepage/HomePage.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Grocery());
}

class Grocery extends StatelessWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) {
        return MaterialApp(
          home: HomePage(),
          theme: ThemeData(fontFamily: "Muli"),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
