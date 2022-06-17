// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries/Components/search.dart';
import 'package:groceries/pages/Shop/components/CardBuild.dart';
import 'package:groceries/pages/Shop/components/carousel.dart';
import 'package:groceries/constants.dart';
import 'package:sizer/sizer.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                height: 7.5.h,
                width: 19.w,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pin_drop_sharp,
                    size: 3.5.h,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    'HILDA HOSTEL, BRAHABOME',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              search(),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 16.h,
                child: carousel(),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exclusive Offer',
                    style:
                        TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'See all',
                      style: TextStyle(color: secondaryColor, fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
                child: buildCard(),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style:
                        TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'See all',
                      style: TextStyle(color: secondaryColor, fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
                child: buildCard(),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Groceries',
                    style:
                        TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'See all',
                      style: TextStyle(color: secondaryColor, fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
                child: buildCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
