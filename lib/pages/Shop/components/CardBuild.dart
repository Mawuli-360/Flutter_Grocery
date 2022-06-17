import 'package:flutter/material.dart';
import 'package:groceries/Components/cardItem.dart';

List<cardItem> items = [
  cardItem(
      image: 'assets/images/milo.png',
      itemName: 'Milo',
      itemDescrip: '1 Milo tin, Price'),
  cardItem(
      image: 'assets/images/rices.png',
      itemName: 'Milo',
      itemDescrip: '1 RiceBag, Price'),
  cardItem(
      image: 'assets/images/banana.png',
      itemName: 'Milo',
      itemDescrip: '7 pcs, Price'),
  cardItem(
      image: 'assets/images/pepper.png',
      itemName: 'Milo',
      itemDescrip: '5 pepper, Price'),
  cardItem(
      image: 'assets/images/milo.png',
      itemName: 'Milo',
      itemDescrip: '1 Milo tin, Price'),
];

ListView buildCard() {
  return ListView.builder(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    itemCount: items.length,
    itemBuilder: ((context, index) {
      return card(item: items[index]);
    }),
  );
}
