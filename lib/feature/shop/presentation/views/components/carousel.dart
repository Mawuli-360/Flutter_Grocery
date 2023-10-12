import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:groceries/constants.dart';
import 'package:sizer/sizer.dart';

List<String> images = [
  'assets/images/summer.jpg',
  'assets/images/soft_drinks.jpg',
  'assets/images/vegies.png',
];

Widget buildCarousel() {
  return SizedBox(
    height: 16.h,
    child: CarouselSlider.builder(
        autoSliderTransitionCurve: Curves.linearToEaseOut,
        enableAutoSlider: true,
        unlimitedMode: true,
        autoSliderTransitionTime: const Duration(microseconds: 1),
        slideIndicator: CircularSlideIndicator(
          indicatorRadius: 5,
          alignment: Alignment.bottomCenter,
          indicatorBackgroundColor: secondaryColor,
        ),
        slideBuilder: (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        itemCount: 3),
  );
}
