import 'package:flutter/material.dart';
import 'package:plat_shop/Strings_Lists/lists.dart';
import 'package:plat_shop/screen/new_screen.dart';
import 'package:plat_shop/screen/popular_screen.dart';
import 'package:plat_shop/screen/screens_row.dart';
import 'package:plat_shop/screen/side_bar_menu.dart';
import 'package:velocity_x/velocity_x.dart';
import 'concept_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const SideBarMenu(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          // leading:
          // const Icon(
          //   Icons.menu,
          //   color: Colors.black,
          // ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.grey.shade700,
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: Colors.grey.shade700,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              child: Screens(onScreen: (screen){
                setState(() {
                  selectedString = screen;
                });
              },

              ),
            ),

            if(isSelected == 0) const ConceptScreen(),
            if(isSelected==1) const PopularScreen(),
            if(isSelected==2) const NewScreen(),


          ],
        ),
      ),
    );
  }
}

