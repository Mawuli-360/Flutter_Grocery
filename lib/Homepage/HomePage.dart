// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:groceries/pages/Shop/Shop.dart';
import 'package:groceries/pages/cart/Cart.dart';
import 'package:groceries/pages/explore/components/explore.dart';
import 'package:groceries/pages/favourite/favourite.dart';
import 'package:sizer/sizer.dart';
import 'package:groceries/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [
    Shop(),
    Explore(),
    Cart(),
    Favourite(),
    Center(child: Text('account')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 90,
              ),
            ],
          ),
          height: 9.h,
          child: BottomNavigationBar(
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            selectedIconTheme: IconThemeData(color: secondaryColor),
            selectedItemColor: secondaryColor,
            selectedFontSize: 18,
            currentIndex: _selectedIndex,
            onTap: _changePage,
            backgroundColor: bgColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.store_outlined,
                    size: 3.h,
                  ),
                  label: 'Shop'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.manage_search_outlined,
                    size: 3.h,
                  ),
                  label: 'Explore'),
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
                    Icons.person,
                    size: 3.h,
                  ),
                  label: 'Account'),
            ],
          ),
        ),
      ),
    );
  }
}
