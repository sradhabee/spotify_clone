import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/edit_profile_screen/edit_profile_screen.dart';

class SessionScreen extends StatelessWidget {
  const SessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Listening On",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
            Row(
              children: [
               
                Icon(Icons.bluetooth,color: ColorConstants.spotifyGreen,size: 20,),
                SizedBox(width: 10,),
                Text("BeatsPill",style: TextStyle(color: ColorConstants.spotifyGreen,fontSize: 15,fontWeight: FontWeight.w500),),
                Icon(Icons.add,color: ColorConstants.spotifyGreen,size: 20,)
              ],
            ),
            SizedBox(height: 20,),
            Text("Select a device",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 16,fontWeight: FontWeight.bold),),
             SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.tv,color: ColorConstants.mainWhite.withOpacity(0.7),),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("BRAVIA 4K GB",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 16,fontWeight: FontWeight.bold),),
                   Row(
                    children: [
                      Icon(Icons.connected_tv_rounded,color: ColorConstants.mainWhite.withOpacity(0.5),),
                      Text("Google Cast",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.5),fontSize: 12,),)
                    ],
                   ),
                  
        
                  ],
                )
                
              ],
            ),
             SizedBox(height: 28,),
            Row(
              children: [
                Icon(Icons.laptop,color: ColorConstants.mainWhite.withOpacity(0.7),),
                SizedBox(width: 20,),
                Text("Momitha's MacBook Pro",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Icon(Icons.more_horiz,color: ColorConstants.mainWhite.withOpacity(0.7))
              ],
            ),
             SizedBox(height: 28,),
        
            Row(
              children: [
                Icon(Icons.airplay,color: ColorConstants.mainWhite.withOpacity(0.7)),
                SizedBox(width: 20,),
                Text("Airplay or Bluetooth",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 16,fontWeight: FontWeight.w500),)
              ],
            ),
             SizedBox(height: 28,),
            Row(
              children: [
                Text("Start a group session",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.only(top: 1,bottom: 1,right: 1,left: 1),
                  height: 14,
                  width: 24,
                  decoration: BoxDecoration(
                    color: ColorConstants.mainWhite,
                    borderRadius: BorderRadius.circular(2),

                  ),
                  child: Text("BETA",style: TextStyle(color: ColorConstants.mainBlack,fontSize: 8,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            SizedBox(height: 18,),
            Text("Listen with friends in real time. Pick what to play and control the music together",style: TextStyle(fontSize: 13,color: ColorConstants.mainWhite.withOpacity(0.5)),),
            SizedBox(height: 20,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen(),));
                  
                },
                child: CircleAvatar(
                  radius: 30,
                  child: Image.asset(ImageConstants.profile_png),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: ColorConstants.spotifyGreen,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Text("Start a session",style: TextStyle(color: ColorConstants.mainBlack,fontSize: 17,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: ColorConstants.mainBlack,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ColorConstants.greyMain)
                ),
                child: Text("Scan to join",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 13,fontWeight: FontWeight.w500),),
              ),
            )
          ],
        ),
      ),
    );
  }
}