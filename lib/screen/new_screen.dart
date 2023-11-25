import 'package:flutter/material.dart';
import 'package:plat_shop/Strings_Lists/strings.dart';
import 'package:plat_shop/screen/product_purchase_screen.dart';

import '../Strings_Lists/lists.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 200, 0),
                child: Text(
                  "New Plants",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                  fontFamily: font
                  ),
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: swiperPlantsImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
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
                        child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFD1D9E6),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 200,
                        width: 100,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                              child: Text(
                                plantsNames[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: font
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                swiperPlantsImages[index],
                                height: 120,
                                width: 70,
                              ),
                            ),
                            Positioned(
                              bottom: 2,
                              left: 4,
                              child: Text(
                                plantPrices[index],
                                style: TextStyle(fontFamily: font),
                              ),
                            )
                          ],
                        ),
                    ),
                      );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
