import 'package:flutter/material.dart';
import 'package:plat_shop/Strings_Lists/lists.dart';
import 'package:plat_shop/Strings_Lists/strings.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPurchaseScreen extends StatefulWidget {

   String nameOfPlanr;
  String imageOfPlanr;
  String priceOfPlanr;
   ProductPurchaseScreen({super.key, required this.nameOfPlanr,required this.imageOfPlanr,required this.priceOfPlanr});

  @override
  State<ProductPurchaseScreen> createState() => _ProductPurchaseScreenState();
}

class _ProductPurchaseScreenState extends State<ProductPurchaseScreen> {
  var itemsPurchase = 1;

  void itemPurchaseIncrementer() {
    setState(() {
      itemsPurchase++;
    });
  }

  void itemPurchaseDecrementer() {
    setState(() {
      if (itemsPurchase > 1) {
        itemsPurchase--;
      }
    });
  }

   int heartColor= 0xFFFFFFFF;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 80,
              right: 300,
              left: 0,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                  weight: 50,
                ),
              )),
           Positioned(
              top: 80,
              right: 0,
              left: 280,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    heartColor = 0xFF00FF00;
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: Color(heartColor),
                  size: 30,
                ),
              )),
          Positioned(
            left: 50,
            top: 70,
            child: Image.asset(
             widget.imageOfPlanr,
              width: 300,
              height: 400,
            ),
          ),
          Positioned(
            bottom:
                0, // Updated this line to position the container at the bottom
            left: 0,
            right: 0,
            child: Container(
              height: 380,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(23.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.nameOfPlanr,
                          style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: font,
                          ),
                        ),
                        Text(
                          widget.priceOfPlanr,
                          style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: font,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 20,
                    child: Container(
                      height: 35,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                            icon: const Icon(
                              Icons.remove,
                              size: 23,
                            ),
                            onPressed: () {
                              itemPurchaseDecrementer();
                            },
                          ),
                          Text(
                            "$itemsPurchase",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          IconButton(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                            icon: const Icon(
                              Icons.add,
                              size: 23,
                            ),
                            onPressed: () {
                              itemPurchaseIncrementer();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Select pot',
                          style: TextStyle(
                            fontFamily: "Lato",
                            color: Colors.black,
                            fontSize: 17,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const SizedBox(
                          height: 90,
                          width: 300,
                          child: PlantPotImagesWidget(),
                        ),
                        const Text(
                          description,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              decoration: TextDecoration.none,
                              fontFamily: 'Lato'),
                        ),
                        const SizedBox(
                          width: 350,
                          child: Text(
                            maxLines: 3,
                            productDescreption,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 8,
                                fontFamily: "Lato",
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 18, 0, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: const Center(
                              child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 12),
                                    child: Icon(
                                      Icons.shopping_bag,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  ),
                                  Text(
                                    addToCart,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Latos',
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          )
                              .box
                              .make()
                              .color(Colors.black)
                              .w(280)
                              .cornerRadius(5)
                              .h(50),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ).box.make().color(const Color(0xFFD1D9E6)),
    );
  }
}

class PlantPotImagesWidget extends StatefulWidget {
  const PlantPotImagesWidget({
    super.key,
  });

  @override
  State<PlantPotImagesWidget> createState() => _PlantPotImagesWidgetState();
}

class _PlantPotImagesWidgetState extends State<PlantPotImagesWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: plantPotImagesList.length,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 8, 10),
            child: GestureDetector(
              onDoubleTap: () {
                setState(() {
                  selectedPlantPotImage = -1;
                });
              },
              onTap: () {
                setState(() {
                  selectedPlantPotImage = index;
                });
              },
              child: Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: selectedPlantPotImage == index
                        ? Border.all(color: Colors.black, width: 2.0)
                        : Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    plantPotImagesList[index],
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
