import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sidebarx/sidebarx.dart';
import '../controllers/one_controller.dart';

class OneView extends GetView<OneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff15477A),
        title: Text('Profil Sekolah'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width * 0.9,
                height: 200,
                color: Colors.amber,
                padding: EdgeInsets.all(20),
                child: Text(
                  'image',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'MI MUHAMMADIYAH KALIPEPE',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'TEMUKAN KAMI DI',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width * 0.9,
                height: 200,
                color: Colors.amber,
                child: Text(
                  'maps',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 100,
                    color: Colors.amber,
                    child: Text(
                      'maps',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 100,
                    color: Colors.amber,
                    child: Text(
                      'maps',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
