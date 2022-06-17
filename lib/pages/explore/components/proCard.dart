// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProCard {
  String image;
  String text;
  final Color bg;
  final Color outline;

  ProCard(
      {required this.image,
      required this.text,
      required this.bg,
      required this.outline});
}

List<ProCard> items = [
  ProCard(
    image: 'assets/images/beverages.png',
    text: 'Beverages',
    bg: Color(0x152195F3),
    outline: Color(0x651A71B8),
  ),
  ProCard(
    image: 'assets/images/canned_fishes.png',
    text: 'Caned Fishes',
    bg: Color.fromARGB(15, 184, 26, 171),
    outline: Color(0x75B81AAB),
  ),
  ProCard(
    image: 'assets/images/rices.png',
    text: 'Rice',
    bg: Color(0x13F33A21),
    outline: Color(0x7DF33A21),
  ),
  ProCard(
    image: 'assets/images/others.png',
    text: 'Others',
    bg: Color(0x0921F344),
    outline: Color(0x7A21F344),
  ),
];
