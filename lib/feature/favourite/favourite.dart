import 'package:flutter/material.dart';
import 'package:groceries/constants.dart';
import 'package:groceries/feature/favourite/Components/fav_item_card.dart';
import 'package:sizer/sizer.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List<FavItem> items = [
    FavItem(img: "assets/images/milo.png", price: "GHC 15.60", proName: "Milo"),
    FavItem(
        img: "assets/images/banana.png", price: "GHC 11.20", proName: "Banana"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Favourite',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            Divider(
              height: 5.h,
              color: Colors.grey,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return favCard(item: items[index]);
                    }))
          ],
        ),
      ),
    );
  }
}
