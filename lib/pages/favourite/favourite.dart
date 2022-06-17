// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries/constants.dart';
import 'package:sizer/sizer.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Favourite',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            Divider(
              height: 5.h,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
