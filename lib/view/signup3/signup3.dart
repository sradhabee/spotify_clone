import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/view/signup4/signup4.dart';

class Signup3 extends StatefulWidget {
  const Signup3({super.key});

  @override
  State<Signup3> createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
  final _genderController=TextEditingController();
  
    bool _isGenderValid = false;
  void _validateGender(String value){
    setState(() {
      _isGenderValid=value.isNotEmpty;
      
    });
     
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: ColorConstants.bgBlack,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's your Gender?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ColorConstants.mainWhite,
              ),
            ),
            SizedBox(height: 5,),

            Container(
               padding: EdgeInsets.only(left: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _isGenderValid?Color.fromARGB(255, 214, 204, 204):ColorConstants.mainBlack,
              ),
              child: TextFormField(
                controller: _genderController,
                decoration: InputDecoration(
                  
                  border: InputBorder.none,
                  
                ),
                style: TextStyle(
                  color: _isGenderValid?ColorConstants.mainBlack:ColorConstants.mainWhite,
                  
                ),
                onChanged: _validateGender,
                
              ),
            ),
            SizedBox(height: 16,),
            Center(
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: _isGenderValid?Color.fromARGB(255, 196, 193, 193):Color.fromARGB(255, 66, 65, 65),
                ),
                child: ElevatedButton(onPressed:_isGenderValid? (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup4(),));
                }:null, child: Text("Next",style: TextStyle(color: ColorConstants.mainBlack,fontSize: 18),)),
              ),
            )
   ] ),
   
   ),
   
   
   );

      
  }
}