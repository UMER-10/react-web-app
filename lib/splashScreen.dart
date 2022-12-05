import 'dart:async';
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp/main.dart';
import 'package:fyp/signup.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});
  

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => signupScreen(),),);

    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/images/csmdxpxl.png")],
        ),

      ),
    );

  }
}