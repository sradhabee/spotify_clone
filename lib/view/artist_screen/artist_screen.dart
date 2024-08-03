
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/dummy_db.dart';

// import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/view/bottom_nav_screen/bottom_nav_screen.dart';


class ArtistScreen extends StatefulWidget {
  const ArtistScreen({super.key,  });

  @override
  State<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen> {
  // int itemTapped=0;
 List <bool> isSelectedList=[];
 @override
  void initState() {
   isSelectedList=List.generate(DummyDb.artistList.length, (index) => false);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:ColorConstants.bgBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.bgBlack,
        title: Text(
          "Choose 3 or more artist you like",
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
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              
              
              
              decoration: InputDecoration(hintText:"Search" ,fillColor: ColorConstants.mainWhite,filled: true,border: InputBorder.none,),
            ),
            SizedBox(height: 20,),
        Expanded(
          child: GridView.builder(
            itemCount: DummyDb.artistList.length,
            
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 15,mainAxisSpacing: 30), itemBuilder: (context, index) {  return 
            GestureDetector(
              onTap: (){
              setState(() {
                isSelectedList[index]=!isSelectedList[index];
              });
              },
              child: Column(
                children: [
                  Stack(
                    children:[ CircleAvatar(radius: 33,backgroundColor: isSelectedList[index]?ColorConstants.mainWhite:ColorConstants.mainBlack,
                      backgroundImage: NetworkImage(DummyDb.artistList[index]["imageUrl"].toString())),
                      
                      if (isSelectedList[index])
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                ),
                    
                    
                ),
                ]),
                  SizedBox(height: 10,),
                  Text(DummyDb.artistList[index]["name"].toString(),style: TextStyle(color: ColorConstants.mainWhite,fontSize: 13),)
                ],
              ),
            );
          
   } ),),
   SizedBox(
    width: 100,
    height: 40,
     child: TextButton(
      style: ButtonStyle(
        
        backgroundColor: MaterialStatePropertyAll(ColorConstants.mainWhite)),
      
      onPressed: (){
       if (isSelectedList.where((item) => item).length >= 3)
      
      // if(itemTapped>=3){
      //   print("itemSelected");
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>BottomNavScreen() ,));}else{
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please choose atleast 3 artists!!!")));
        }
        
          }, child: Text("Next",style: TextStyle(color: ColorConstants.mainBlack,fontSize: 15,fontWeight: FontWeight.w500),)),
   )
   ]
        ),
      ),
    );

    }
}


  
          
          
          
       
       
        
            
           
