// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Container search() {
  return Container(
    height: 6.h,
    decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.all(
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
