import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) => 
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConstants.mainBlack,
      body: Center(
        child: Image.asset(ImageConstants.LOGO_PNG),
      ),
    );
  }
}