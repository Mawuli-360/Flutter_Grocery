import 'package:flutter/material.dart';
import 'package:groceries/constants.dart';
import 'package:groceries/shared/resource/app_strings.dart';
import 'package:sizer/sizer.dart';

Widget buildCategoryTitle(
    {required String title, required void Function()? onPressed}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 1.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            AppStrings.sellAll,
            style: TextStyle(color: secondaryColor, fontSize: 14.sp),
          ),
        ),
      ],
    ),
  );
}

Widget buildHeader() {
  return Padding(
    padding: EdgeInsets.only(bottom: 1.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.location_on,
          size: 3.5.h,
          color: Colors.black45,
        ),
        SizedBox(
          width: 2.w,
        ),
        Text(
          AppStrings.hildaHostel,
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black45),
        ),
      ],
    ),
  );
}
