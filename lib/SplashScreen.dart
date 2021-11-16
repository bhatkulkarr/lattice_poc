import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lattice_scanner_app/Auth/LoginPage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=> Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                    LoginPage()
                )
            )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("Images/LatticesemiconLogo.png"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
