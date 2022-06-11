import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff15477A),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              Container(
                width: Get.width * 0.4,
                height: Get.width * 0.4,
                child: Image.asset("assets/image/Logo2.png", fit: BoxFit.cover),
              ),
              SizedBox(
                height: 200,
              ),
              Text(
                "PROFIL SEKOLAH",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "MI MUHAMMADIYAH KALIPEPE",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
