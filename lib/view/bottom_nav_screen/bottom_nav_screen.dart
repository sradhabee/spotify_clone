import 'package:flutter/material.dart';

import 'package:spotify/utils/constants/color_constants.dart';

import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/home_screen/home_screen.dart';
import 'package:spotify/view/library_screen/library_screen.dart';
import 'package:spotify/view/premium_screen/premium_screen.dart';
import 'package:spotify/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});
 

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
   int selectedIndex=0;
    List<Widget>myScreens=[
      HomeScreen(),
      SearchScreen(),
      LibraryScreen(),
       PremiumScreen(),
    ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    
      body:myScreens[selectedIndex],
        backgroundColor: ColorConstants.mainBlack,
      
     bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: ColorConstants.greyMain,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,

        
        items:[ BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Search"),
        BottomNavigationBarItem(icon:Icon(Icons.library_music_rounded),label: "Your Library"),
         BottomNavigationBarItem(icon: Image.asset(ImageConstants.sSPOTIFY_LOGO,height: 24,color: ColorConstants.greyMain,),label: "Premium")],
         
         
         onTap: (value){
          selectedIndex=value;
          setState(() {
            
          });

         },) ,
    );
  }
}