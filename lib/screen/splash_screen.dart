import 'package:flutter/material.dart';
import 'dart:async';

import 'package:plat_shop/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    
    Timer(Duration(seconds: 3), () {
      
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ShopApp()));
    });
  }
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/splash_screen_image2.jpg",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned(
          top: 200,
          left: 40,
          right: 70,
          bottom: 60,
          child: Text("Plants for Life",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
          ),
        )
      ],
    );
  }
}
