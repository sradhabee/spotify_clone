import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/signup1/signup1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            
            colors: [Colors.grey.shade800,Color.fromARGB(255, 15, 15, 15)],
          )
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(ImageConstants.WHITELOGO_PNG),
              SizedBox(height: 40,),
              Text(
                
                "Millions of songs.",style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.w900),),
                
                Text(
                
                "Free on Spotify.",style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.w900),),
                SizedBox(height: 60,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup1(),));
                },style: ElevatedButton.styleFrom(backgroundColor: ColorConstants.spotifyGreen,
                foregroundColor: ColorConstants.mainBlack,
                fixedSize: Size(300, 50),
                  
                ), child: Text("Sign up for free",style: TextStyle(fontSize: 18),)),
                SizedBox(height: 10,),
                ElevatedButton(
               style: ElevatedButton.styleFrom(backgroundColor: ColorConstants.mainBlack,
               foregroundColor: ColorConstants.mainWhite,
               shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstants.mainWhite.withOpacity(0.5),width: 0.5),borderRadius: BorderRadius.circular(30)),
               fixedSize: Size(300, 60)),
               
               
                  onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.phone_iphone,),
                      SizedBox(width: 25,),
                      Text("Continue with phone\n number",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18),textAlign: TextAlign.center,)
                    ],
                  )),
                   SizedBox(height: 10,),
                   ElevatedButton(
               style: ElevatedButton.styleFrom(backgroundColor: ColorConstants.mainBlack,
               foregroundColor: ColorConstants.mainWhite,
               shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstants.mainWhite.withOpacity(0.5),width: 0.5),borderRadius: BorderRadius.circular(30)),
               fixedSize: Size(300, 60)),
               
               
                  onPressed: (){}, child: Row(
                    children: [
                      Image.asset(ImageConstants.GOOGLELOGO_PNG),
                      SizedBox(width: 25,),
                      Text("Continue with Google",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18),textAlign: TextAlign.center,)
                    ],
                  )),
                   SizedBox(height: 10,),
                  ElevatedButton(
               style: ElevatedButton.styleFrom(backgroundColor: ColorConstants.mainBlack,
               foregroundColor: ColorConstants.mainWhite,
               shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstants.mainWhite.withOpacity(0.5),width: 0.5),borderRadius: BorderRadius.circular(30)),
               fixedSize: Size(300, 60)),
               
               
                  onPressed: (){}, child: Row(
                    children: [
                      Image.asset(ImageConstants.FBLOGO_PNG),
                      SizedBox(width: 25,),
                      Text("Continue with Facebook",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18),textAlign: TextAlign.center,)
                    ],
                  )),
                   SizedBox(height: 30,),
                  TextButton(onPressed: (){}, child: Text("Log in",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.bold))),
                  SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    ); 
  }
}