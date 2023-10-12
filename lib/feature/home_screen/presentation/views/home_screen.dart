import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groceries/feature/home_screen/presentation/provider/home_notifier.dart';
import 'package:groceries/shared/temp/home_data.dart';
import 'package:sizer/sizer.dart';
import 'package:groceries/constants.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeNotifierProvider);

    return Scaffold(
      backgroundColor: bgColor,
      body: HomeData.navigationItems[homeState.index],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          decoration: const BoxDecoration(
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
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedIconTheme: IconThemeData(color: secondaryColor),
            selectedItemColor: secondaryColor,
            selectedFontSize: 18,
            currentIndex: homeState.index,
            onTap: (value) =>
                ref.read(homeNotifierProvider.notifier).changeScreen(value),
            backgroundColor: bgColor,
            type: BottomNavigationBarType.fixed,
            items: HomeData.bottomNavigationBarItems,
          ),
        ),
      ),
    );
  }
}
