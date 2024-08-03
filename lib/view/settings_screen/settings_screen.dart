import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:ColorConstants.bgBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.bgBlack,
        title: Text(
          "Create account",
          style: TextStyle(
            color: ColorConstants.mainWhite,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  child: Image.asset(ImageConstants.profile_png),
                ),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Maya",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("View Profile",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.5),fontSize: 13),)
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                 Text("Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
            SizedBox(height: 20,),
             Row(
              children: [
                 Text("Data Saver",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Languages",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Playback",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Explicit Content",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Devices",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Car",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Social",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Voice Assistant & Apps",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Audio Quality",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Text("Storage",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.mainWhite.withOpacity(0.5),)
        
              ],
            ),
           
           
          ],
        ),
      ),
    );
  }
}