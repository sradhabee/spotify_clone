import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/library_screen/library_card.dart';
import 'package:spotify/view/settings_screen/settings_screen.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: 
                  [Colors.blue,ColorConstants.mainBlack])
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 60,
                    child: Image.asset(ImageConstants.profile_png),
                  ),
                ),
                
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color.fromARGB(255, 66, 59, 59)
                    ),
                    child: Text("Edit profile",style: TextStyle(color: ColorConstants.mainWhite),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("23",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.9)),),
                      Text("Playlists",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.8),fontSize: 10),)
                    ],
                  ),
                   Row(
                children: [
                  Column(
                    children: [
                      Text("58",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.9)),),
                      Text("Followers",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.8),fontSize: 10),)
                    ],
                  )
                ],
              ),
               Row(
                children: [
                  Column(
                    children: [
                      Text("43",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.9)),),
                      Text("Following",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.8),fontSize: 10),)
                    ],
                  )
                ],
              ),
                ],
              ),
              Text("Playlists",style: TextStyle(fontSize: 19,color: ColorConstants.mainWhite,fontWeight: FontWeight.w500),),
              Column(
                children: List.generate(DummyDb.libraryCard.length, (index) => LibraryCard(libraryCard: DummyDb.libraryCard[index], titleName: DummyDb.titleName[index], subName: DummyDb.subName[index])),
              ),
              SizedBox(height: 10,),
              Text("See all playlists",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 15,fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),
             
            ],
          ),
        ),
      ),
    );
  }
}