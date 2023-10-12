import 'package:flutter/material.dart';
import 'package:groceries/feature/cart/presentation/views/cart.dart';
import 'package:groceries/feature/favourite/favourite.dart';
import 'package:groceries/feature/shop/presentation/views/shop.dart';
import 'package:groceries/shared/resource/app_images.dart';
import 'package:groceries/shared/widgets/components/card_item.dart';
import 'package:sizer/sizer.dart';

class HomeData {
  HomeData._();

  static List<Widget> navigationItems = [
    const Shop(),
    // const Explore(),
    const Cart(),
    const Favourite(),
    const Center(child: Text('account')),
  ];

  static List<BottomNavigationBarItem> bottomNavigationBarItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.store_outlined,
          size: 3.h,
        ),
        label: 'Shop'),
    // BottomNavigationBarItem(
    //     icon: Icon(
    //       Icons.manage_search_outlined,
    //       size: 3.h,
    //     ),
    //     label: 'Explore'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_cart_outlined,
          size: 3.h,
        ),
        label: 'Cart'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite_border_outlined,
          size: 3.h,
        ),
        label: 'Favourite'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.person_outline,
          size: 3.h,
        ),
        label: 'Account'),
  ];

  static List<CardItem> items = [
    CardItem(
        image: AppImages.banana,
        itemName: "Banana",
        itemDescrip: "Fresh banana",
        itemPrice: "GHC 20.00"),
    CardItem(
        image: AppImages.fanta,
        itemName: "Fanta",
        itemDescrip: "Cool with tasteful fanta",
        itemPrice: "GHC 10.00"),
    CardItem(
        image: AppImages.pepper,
        itemName: "Pepper",
        itemDescrip: "Fresh pepper",
        itemPrice: "GHC 8.00"),
    CardItem(
        image: AppImages.pineapple,
        itemName: "Pineapple",
        itemDescrip: "Fresh pineapple",
        itemPrice: "GHC 15.00"),
    CardItem(
        image: AppImages.tomatoSauce,
        itemName: "Canned Fish",
        itemDescrip: "Good canned fish",
        itemPrice: "GHC 25.00"),
    CardItem(
        image: AppImages.milo,
        itemName: "Milo",
        itemDescrip: "Chocolate milo",
        itemPrice: "GHC 18.00"),
    CardItem(
        image: AppImages.rices,
        itemName: "Rice",
        itemDescrip: "Fresh rice",
        itemPrice: "GHC 40.00"),
  ];
}
