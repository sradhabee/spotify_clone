



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:spotify/utils/constants/color_constants.dart';

class languageCard extends StatelessWidget {
  const languageCard({
    super.key, required this.titleText, required this.color, required this.imageUrl,  required this.isSelected,
  });
  
final String titleText;
final Color color;
final String imageUrl;

final bool isSelected;
 
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 200,
    width: 200,
      
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        
        border: Border.all(color:isSelected?ColorConstants.mainWhite:ColorConstants.mainBlack),
        
        color: color,
        
       
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            titleText,
            style: TextStyle(color: ColorConstants.mainWhite,fontSize: 16,fontWeight: FontWeight.bold),
         
          ),
          SizedBox(width: 8,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  imageUrl,
                  width: 50,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
      
  }
}