import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sidebarx/sidebarx.dart';
import '../controllers/one_controller.dart';

class OneView extends GetView<OneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SidebarX(
            controller: SidebarXController(selectedIndex: 0),
            items: const [
              SidebarXItem(icon: Icons.home, label: 'Home'),
              SidebarXItem(icon: Icons.search, label: 'Search'),
            ],
          ),
          // Your app screen body
        ],
      ),
    );
  }
}
