import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/five_controller.dart';

class FiveView extends GetView<FiveController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff15477A),
        title: Text('Ekstrakulikuler'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FiveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
