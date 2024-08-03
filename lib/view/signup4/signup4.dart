import 'package:flutter/material.dart';
// import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constants.dart';

import 'package:spotify/view/language_screen/language_screen.dart';


class Signup4 extends StatefulWidget {
  const Signup4({super.key});

  @override
  State<Signup4> createState() => _Signup4State();
}

class _Signup4State extends State<Signup4> {
 bool onChecked=false;
 bool onClicked= false;
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
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What's your name?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.mainWhite,
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(8),
              //   color: ColorConstants.greyMain),
              // )
              TextField(
                decoration: InputDecoration(hintText: "Enter your name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: Color.fromARGB(255, 197, 190, 190),filled: true,
                enabledBorder:OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(8),),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                
                
                
                ),
                
                
              ),
              SizedBox(height: 8,),
              Text("This appears on your spotify profile",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 10,fontWeight: FontWeight.bold),),
              SizedBox(height: 25,),
              Divider(),
              SizedBox(height: 25,),
              Text("By tapping on Create account,you agree to the  spotify Terms of use ",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("Terms of use",style: TextStyle(color: ColorConstants.spotifyGreen,fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("To learn more about how Spotify collects,uses,shares and protects your personal data, Please see the Spotify Privacy Policy",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("Privacy Policy",style: TextStyle(color: ColorConstants.spotifyGreen,fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 22,),
              Row(
                children: [
                  Text("Please send me news and offers from Spotify",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 12,fontWeight: FontWeight.bold),),
                  Spacer(),
                 Checkbox(
                  checkColor: ColorConstants.mainBlack,
                  fillColor: MaterialStatePropertyAll(ColorConstants.mainWhite),
                    focusColor: ColorConstants.spotifyGreen,
                 
                  value: onChecked, onChanged: (value){
                  onChecked=!onChecked;
                  setState(() {
                    
                  });
                 }
                ),
          
                ],
              ),
              SizedBox(height: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Share my registration data with Spotify's content providers",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 12,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Text(" for marketing purposes",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 12,fontWeight: FontWeight.bold)),
                      Spacer(),
                  
                  Checkbox(
                    checkColor: ColorConstants.mainBlack,
                    fillColor: MaterialStatePropertyAll(ColorConstants.mainWhite),
                    focusColor: ColorConstants.spotifyGreen,
                    value: onClicked, onChanged: (value){
                  onClicked=!onClicked;
                  setState(() {
                    
                  });
                 }),
          
                    ],
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: TextButton(onPressed: (){
                      
                     
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LanguageScreen(),));
                      
                    },style: ButtonStyle(
                     padding: MaterialStatePropertyAll(EdgeInsets.only(left: 18,right: 18)),
                      backgroundColor: MaterialStatePropertyAll(ColorConstants.mainWhite)), child: Text("Create an account",style: TextStyle(color: ColorConstants.mainBlack,fontWeight: FontWeight.bold),)),
                  )
                  
                  
          
                ],
              )
               
              ],),
        ),),);
  }
}