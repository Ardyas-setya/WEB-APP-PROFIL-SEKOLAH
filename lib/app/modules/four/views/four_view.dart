import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/four_controller.dart';

class FourView extends GetView<FourController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff15477A),
        title: Text('Galery'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FourView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
