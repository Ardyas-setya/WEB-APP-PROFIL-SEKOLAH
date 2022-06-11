import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/six_controller.dart';

class SixView extends GetView<SixController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff15477A),
        title: Text('Berita Terkini'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SixView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
