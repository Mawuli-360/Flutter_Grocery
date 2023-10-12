import 'package:flutter/material.dart';
import 'package:groceries/constants.dart';
import 'package:sizer/sizer.dart';

class ItemQuantity extends StatelessWidget {
  const ItemQuantity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.remove,
                color: Colors.grey.shade400,
                size: 3.h,
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "1",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                size: 3.h,
                color: secondaryColor,
              ),
            )),
      ],
    );
  }
}
