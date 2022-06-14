import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/two_controller.dart';

class TwoView extends GetView<TwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff15477A),
        title: Text(' Prestasi'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TwoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
