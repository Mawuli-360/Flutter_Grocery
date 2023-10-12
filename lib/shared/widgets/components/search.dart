import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget buildSearchBar() {
  return Container(
    height: 6.h,
    margin: EdgeInsets.only(bottom: 1.4.h),
    decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        )),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: TextFormField(
          enabled: true,
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 11.sp, color: Colors.black45),
            hintText: 'Search Store',
            prefixIcon: Icon(
              Icons.search,
              size: 4.h,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}
