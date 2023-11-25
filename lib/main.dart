import 'package:flutter/material.dart';
import 'package:plat_shop/screen/product_purchase_screen.dart';
import 'package:plat_shop/screen/splash_screen.dart';
import 'screen/home_screen.dart';
import 'package:plat_shop/Strings_Lists/lists.dart';
void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatefulWidget {
  const ShopApp({super.key});

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  // This widget is the root of your application.
  bool showSplash = true; // Add this line to control when to show the splash screen

  @override
  void initState() {
    super.initState();
    // Add a delay to switch from splash screen to the main screen
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showSplash = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: showSplash ? SplashScreen() : screens[isSelected],


    );
  }
}
