// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries/Components/search.dart';
import 'package:groceries/pages/explore/components/proCard.dart';
import 'package:sizer/sizer.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Find Products',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 4.h,
            ),
            search(),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: productCard(item: items[index]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Container productCard({required ProCard item}) {
    return Container(
      height: 25.h,
      width: 45.w,
      decoration: BoxDecoration(
        color: item.bg,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(color: item.outline),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                item.image,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  item.text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
