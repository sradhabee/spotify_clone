
import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';

class PremiumContainer extends StatelessWidget {
  const PremiumContainer({
    super.key, required this.heading, required this.frstPrice, required this.scndPrice, required this.descpText1, required this.descpText2, required this.cntText, required this.lastText, required this.descpText3,
    
  });
  final String heading;
  final String frstPrice;
   final String scndPrice;
    final String descpText1;
     final String descpText2;
     final String descpText3;
     

      final String cntText;
       final String lastText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 41, 39, 39)),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Row(
           children: [
            SizedBox(height: 48,),
             Image.asset(ImageConstants.sSPOTIFY_LOGO,color: ColorConstants.mainWhite,height: 20,),
                 Text("Premium",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: ColorConstants.mainWhite),),
           ],
         ),
         Text(heading,style: TextStyle(color:ColorConstants.pink,fontSize: 20,fontWeight: FontWeight.bold),),
         SizedBox(height:10 ,),
         Text(frstPrice,style: TextStyle(color:ColorConstants.mainWhite,fontSize: 20,fontWeight: FontWeight.bold),),
         Text(scndPrice,style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.5),fontSize: 14)),
         SizedBox(height: 10,),
         SizedBox(
          width: 300,
           child: Divider(
            thickness: 0.5,
            
            color: ColorConstants.mainWhite.withOpacity(0.5),
           ),
         ),
          SizedBox(height: 10,),
          Text(textAlign: TextAlign.center,descpText1,style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.w500),),
          Text(textAlign: TextAlign.center,descpText2,style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.w500)),
          Text(textAlign: TextAlign.center,descpText3,style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.w500)),
           SizedBox(height: 10,),
           Center(
             child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 8),
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: ColorConstants.mainWhite,
                    ),
                    child: Text(cntText,style: TextStyle(color: ColorConstants.mainBlack,fontSize: 18,fontWeight: FontWeight.w500),),
                  ),
           ),
                 SizedBox(height: 10,),
                 Center(child: Text(lastText,style: TextStyle(fontSize: 14,color: ColorConstants.mainWhite.withOpacity(0.5)),)),
                 SizedBox(height: 18,),
    
       ],
     ),
    );
  }
}