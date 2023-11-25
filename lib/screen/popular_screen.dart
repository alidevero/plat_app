import 'package:flutter/material.dart';
import 'package:plat_shop/Strings_Lists/strings.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Strings_Lists/lists.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

         child: Column(
      children: [
        PopularCateorySwiper(
            popularCateorySwiperImagesList: popularPlantsImges,
            popularCateorySwiperPlantsNamesList: plantsNames,
            popularCateorySwiperPlantsPricesList: plantPrices,
          popularPlantCategoryInput: popularPlantCategories[0],
        ),
        PopularCateorySwiper(
            popularCateorySwiperImagesList: popularPlantsImges,
            popularCateorySwiperPlantsNamesList: plantsNames,
            popularCateorySwiperPlantsPricesList: plantPrices,
        popularPlantCategoryInput: popularPlantCategories[1],
        ),
        // PopularCateorySwiper(
        //     popularCateorySwiperImagesList: popularPlantsImges,
        //     popularCateorySwiperPlantsNamesList: plantsNames,
        //     popularCateorySwiperPlantsPricesList: plantPrices),

      ],
         ),
    );
  }
}

class PopularCateorySwiper extends StatelessWidget {
  final List popularCateorySwiperImagesList;
  final List popularCateorySwiperPlantsNamesList;
  final List popularCateorySwiperPlantsPricesList;
  final String popularPlantCategoryInput;
  const PopularCateorySwiper(
      {super.key,
      required this.popularCateorySwiperImagesList,
      required this.popularCateorySwiperPlantsNamesList,
      required this.popularCateorySwiperPlantsPricesList,
      required this.popularPlantCategoryInput
      });

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 170, 0),
          child: SizedBox(
            width: 700,
            child: Text(
              maxLines :1,
              popularPlantCategoryInput,
              style: TextStyle(
                  fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
              fontFamily: font,
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),

        VxSwiper.builder(itemCount: popularCateorySwiperImagesList.length,

            itemBuilder: (context , int index){
          return Container(
            decoration: BoxDecoration(
              color:  Color(0xFFD1D9E6),
              borderRadius: BorderRadius.circular(15.0),
            ),
            height: 300,
            width: 300,
            child: Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(30, 5, 30, 5),
                  child: Text(
                    popularCateorySwiperPlantsNamesList[index],
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),
                  ),
                ),
                Center(
                  child: Image.asset(
                    popularCateorySwiperImagesList[index],
                    height: 170,
                    width: 170,

                  ),
                ),
                Positioned(
                  bottom: 2,
                  left: 4,
                  child: Text(
                    popularCateorySwiperPlantsPricesList[index],
                  ),
                )
              ],
            ),
          );
            })
      ],
    );
  }
}
