import 'package:flutter/material.dart';

import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/view/signup2/signup2.dart';

class Signup1 extends StatefulWidget {
  const Signup1({super.key});

  @override
  State<Signup1> createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
  final _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  bool _isFocused = false;
  bool _isButtonEnabled = false;

  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   _emailFocusNode.dispose();
  //   super.dispose();
  // }

  void _validateEmail() {
    setState(() {
      _isButtonEnabled = _emailController.text.endsWith('@gmail.com');
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
              "What's your email address?",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: ColorConstants.mainWhite,
              ),
            ),
            GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(_emailFocusNode);
              },
              child: Container(
                padding: EdgeInsets.only(left: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: _isFocused
                      ? Color.fromARGB(255, 169, 163, 163)
                      : Color.fromARGB(255, 69, 64, 64),
                ),
                child: TextFormField(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    fillColor: Colors.grey,
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => _validateEmail(),
                  onTap: () {
                    setState(() {
                      _isFocused = true;
                    });
                  },
                  onFieldSubmitted: (value) {
                    setState(() {
                      _isFocused = false;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "You will need to confirm this email later",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: _isButtonEnabled?ColorConstants.mainWhite:Color.fromARGB(255, 125, 120, 120),
                ),
                child: ElevatedButton(
                 
                         
                  
                  onPressed: _isButtonEnabled
                      ? () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>Signup2() ),
                          );
                        }
                      : null,
                      
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,)
                                    
                    
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}