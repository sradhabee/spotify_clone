import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/view/signup3/signup3.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  final _passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  void _validatePassword(String value) {
    setState(() {
      _isButtonEnabled = value.length >= 8;
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
              "Create Password",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ColorConstants.mainWhite,
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.only(left: 8),
              width: double.infinity,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                obscureText: true,
                controller: _passwordController,
                style: TextStyle(
                  color: _passwordController.text.length < 8
                      ? Colors.red
                      : Colors.white,
                ),
                onChanged: _validatePassword,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _passwordController.text.length < 8
                    ? ColorConstants.mainWhite
                    : ColorConstants.bgBlack,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Use at least 8 characters",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: _isButtonEnabled
                      ? ColorConstants.mainWhite
                      : Color.fromARGB(255, 35, 34, 34),
                ),
                child: TextButton(
                  onPressed: _isButtonEnabled
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signup3(),
                            ),
                          );
                        }
                      : null,
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: _isButtonEnabled
                          ? ColorConstants.mainBlack
                          : ColorConstants.mainWhite,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
