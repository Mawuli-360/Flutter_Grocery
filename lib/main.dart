import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groceries/feature/home_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const ProviderScope(child: GroceryApp()));
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) {
        return MaterialApp(
          home: const SplashScreen(),
          theme: ThemeData(fontFamily: "Muli"),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
