import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/three_controller.dart';

class ThreeView extends GetView<ThreeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff15477A),
        title: Text(' Tenaga Pendidik'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ThreeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
