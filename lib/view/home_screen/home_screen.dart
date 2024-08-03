



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/view/home_screen/SongsListScreen.dart';
import 'package:spotify/view/song_details_screen/song_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           iconTheme: IconThemeData(color: ColorConstants.mainWhite),
          
          backgroundColor: Colors.transparent,
          actions: [  
            
                Icon(Icons.notifications_none_rounded,),
                SizedBox(width: 12,),
                 Icon(Icons.av_timer_rounded,),
                  SizedBox(width: 12,),
                  Icon(Icons.settings),
                  SizedBox(width: 12,)],
                  
                  ),
        backgroundColor: ColorConstants.mainBlack,
       
        body:
      


        ListView.builder(
          
          itemCount: DummyDb.songDetailsList.length,
          itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => SongDetailsScreen(imageUrl: DummyDb.songDetailsList[index]["imageUrl"]!, subText: DummyDb.songDetailsList[index]["subText"]!),));
            },
            child:Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                
                children: [
              
               SongsListScreen(songPosters:DummyDb.songLists1, mainTitle: "Sing-along", subTexts: DummyDb.subText1, lastTexts: DummyDb.lastText1,),
                SongsListScreen(songPosters:DummyDb.songLists2, mainTitle: "Recently Played", subTexts: DummyDb.subText2, lastTexts: DummyDb.lastText2, ),
                 SongsListScreen(songPosters:DummyDb.songLists3, mainTitle: "Tamil Hits", subTexts: DummyDb.subText3, lastTexts: DummyDb.lastText3,),
                  SongsListScreen(songPosters:DummyDb.songLists4, mainTitle: "Shows to try", subTexts: DummyDb.subText4, lastTexts: DummyDb.lastText4,),
                   SongsListScreen(songPosters:DummyDb.songLists5, mainTitle: "Throwback", subTexts: DummyDb.subText5, lastTexts: DummyDb.lastText5, ),
                    SongsListScreen(songPosters:DummyDb.songLists6, mainTitle: "Featured Charts", subTexts: DummyDb.subText6, lastTexts: DummyDb.lastText6, ),
                     SongsListScreen(songPosters:DummyDb.songLists7, mainTitle: "Today's biggest hits", subTexts: DummyDb.subText7, lastTexts: DummyDb.lastText7, ),
                      SongsListScreen(songPosters:DummyDb.songLists8, mainTitle: "Fresh new music", subTexts: DummyDb.subText8, lastTexts: DummyDb.lastText8, ),
                ]
              ),
            )
          );
          
        },)
      ),
    );
    
  }
}
          





