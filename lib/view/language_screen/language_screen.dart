

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/view/artist_screen/artist_screen.dart';
import 'package:spotify/view/language_screen/language_card.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
List<bool> isSelectedList=[];
@override
  void initState() {
  isSelectedList=List.generate(DummyDb.imageUrl.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bgBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.bgBlack,
        title: Text(
          "What music do you like",
          style: TextStyle(
            color: ColorConstants.mainWhite,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Column(
      children: [
        Expanded(
          child: GridView.builder(
            itemCount: DummyDb.titleText.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2
              
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
               onTap: (){
                setState(() {
                   isSelectedList[index]=!isSelectedList[index];
                  
                });
               


               },
                child: languageCard(titleText: DummyDb.titleText[index],  color: DummyDb.color[index], imageUrl: DummyDb.imageUrl[index],  isSelected: isSelectedList[index],));
            },
          ),
        ),
        
        Visibility(
          visible: (isSelectedList.contains(true)),
          child: SizedBox(
            width: 100,
            height: 40,
            child: TextButton(
              
              style: ButtonStyle(
                
                backgroundColor: MaterialStatePropertyAll(ColorConstants.mainWhite)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ArtistScreen(),));
              
                
              }, child: Text("Next",style: TextStyle(color: ColorConstants.mainBlack,fontWeight: FontWeight.bold,fontSize: 18),)),
          ),
        ),
          SizedBox(height: 18,),
      ],
 )
    );
  }
}

