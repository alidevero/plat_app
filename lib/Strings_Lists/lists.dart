import 'package:plat_shop/screen/home_screen.dart';

import 'strings.dart';
import 'package:plat_shop/screen/popular_screen.dart';
import 'package:plat_shop/screen/new_screen.dart';
var isSelected= 0;
var selectedString= '';
var screenStrings= [concept , popular,newer];

var screens = [const HomeScreen(),const PopularScreen(),const NewScreen()];

var swiperPlantsImages = [ image1,image2,image3,image4,image5,image6,image7,image8];

var  plantsNames = [plant1Name,plant2Name,plant3Name,plant4Name,plant5Name,plant6Name,plant7Name,plant8Name];

var plantSizeText = [plant1SizeText,plant2SizeText,plant3SizeText,plant4SizeText,plant5SizeText,plant6SizeText,plant7SizeText,plant8SizeText];
var plantPrices=[plant1Price,plant2Price,plant3Price,plant4Price,plant5Price,plant6Price,plant7Price,plant8Price];

var popularPlantsImges = [popularPlantsImage1,popularPlantsImage2,popularPlantsImage3,popularPlantsImage4,popularPlantsImage5];

var popularPlantCategories = [popularPlantsCategories1,popularPlantsCategories2,popularPlantsCategories3,popularPlantsCategories4];


var plantPotImagesList= [plantPotImage1,plantPotImage2,plantPotImage3];
 int selectedPlantPotImage = -1;