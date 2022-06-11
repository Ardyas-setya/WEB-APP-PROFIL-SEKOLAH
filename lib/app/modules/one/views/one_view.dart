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
      body: Center(
        child: Text(
          'OneView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
