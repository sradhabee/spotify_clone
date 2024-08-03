import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/utils/constants/color_constants.dart';

class TrackViewScreen extends StatelessWidget {
  const TrackViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 181, 19, 73),
      
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("Angaaron",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
        actions: [Icon(Icons.more_horiz,color: ColorConstants.mainWhite,),SizedBox(width: 10,)],
        
         leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://i.scdn.co/image/ab67616d0000b273b3b485c05c0c8a4893612544")),
                      
                      
                ),
              ),
            ),
            SizedBox(height: 26,),
            Text("From Pushpa , Angaaron",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: ColorConstants.mainWhite),),
            Row(
              children: [
                Text("Shreya Ghoshal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: ColorConstants.mainWhite.withOpacity(0.6)),),
                Spacer(),
                Icon(Icons.favorite_border,color: ColorConstants.mainWhite.withOpacity(0.7),)
              ],
            ),
            SizedBox(height: 14,),
            Stack(
              children: [
                Divider(
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
                Positioned(
                  top: 1,
                left: 82,
                  child: CircleAvatar(
                    radius: 6,
                  ),
                )
              ],
            ),
            
            Row(
              children: [
                Text("1:36",style: TextStyle(fontSize: 10,color: ColorConstants.mainWhite.withOpacity(0.5)),),
                Spacer(),
                Text("4:10",style: TextStyle(fontSize: 10,color: ColorConstants.mainWhite.withOpacity(0.5)),)
              ],
            ),
            SizedBox(height: 44,),
            Row(
              children: [
                Icon(Icons.shuffle_outlined,color: ColorConstants.mainWhite.withOpacity(0.7),),
                SizedBox(width: 35,),
                Icon(Icons.skip_previous,color: ColorConstants.mainWhite,size: 40,),
                SizedBox(width: 38,),
                Icon(Icons.pause_circle_filled_outlined,color: ColorConstants.mainWhite,size: 60,),
                SizedBox(width: 35,),
                Icon(Icons.skip_next,color: ColorConstants.mainWhite,size: 40,),
                SizedBox(width: 35,),
                Icon(Icons.loop_rounded,color: ColorConstants.spotifyGreen.withOpacity(0.5),size: 30,)
              ],
            ),
            SizedBox(
              height: 62,
            ),
            Row(
              children: [
                Icon(Icons.bluetooth,color: ColorConstants.spotifyGreen,size: 14,),
                Text("BEATSPILL",style: TextStyle(fontSize: 10.5,color: ColorConstants.spotifyGreen),),
                Icon(Icons.arrow_drop_down,color: ColorConstants.spotifyGreen,),
                Spacer(),
                Icon(Icons.ios_share,color: ColorConstants.mainWhite.withOpacity(0.7),),
                SizedBox(width: 22,),
                Icon(Icons.playlist_play_rounded,color: ColorConstants.mainWhite.withOpacity(0.7),)
        
              ],
            ),
            Spacer(),
            Stack(
              children:[ Container(
                padding: EdgeInsets.only(left: 8,top: 8),
                height: 50,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color.fromARGB(255, 99, 8, 39)),
                  child: Text("Lyrics",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              Positioned(
                right: 4,
                top: 4,
                child: Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Text("MORE",style: TextStyle(fontSize: 10.5,color: ColorConstants.mainWhite),),
                ),
              )
              ]
            ),
          ],
        ),
      ),
    );
  }
}