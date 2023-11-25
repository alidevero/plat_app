import 'package:flutter/material.dart';
import 'package:plat_shop/Strings_Lists/strings.dart';
import 'package:plat_shop/screen/product_purchase_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Strings_Lists/lists.dart';

class ConceptScreen extends StatelessWidget {
  const ConceptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 200, 0),
              child: Text(
                "Concepts",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: font),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 100, 50),
              child: Container(
                height: 5,
                width: 90,
                color: Colors.green,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: VxSwiper.builder(
            itemCount: swiperPlantsImages.length,
            height: 450,
            enlargeCenterPage: true,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductPurchaseScreen(
                        nameOfPlanr: plantsNames[index],
                        imageOfPlanr: swiperPlantsImages[index],
                        priceOfPlanr: plantPrices[index],
                      ),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: const Color(0xFFD1D9E6),
                      ),
                      width: 270,
                      height: 406,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 50, 80, 0),
                            child: Text(
                              plantsNames[index],
                              style:  TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: font,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 10, 80, 0),
                            child: Text(
                              plantSizeText[index],
                              style:  TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontFamily: font,
                              ),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              swiperPlantsImages[index],
                              height: 200,
                              width: 200,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(8, 30, 140, 0),
                                child: Text(
                                  plantPrices[index],
                                  style:  TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: font,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(41),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        height: 80,
                        width: 80,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
