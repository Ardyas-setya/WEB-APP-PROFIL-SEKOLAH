import 'package:get/get.dart';

import 'package:mi_kalipepe/app/modules/five/bindings/five_binding.dart';
import 'package:mi_kalipepe/app/modules/five/views/five_view.dart';
import 'package:mi_kalipepe/app/modules/four/bindings/four_binding.dart';
import 'package:mi_kalipepe/app/modules/four/views/four_view.dart';
import 'package:mi_kalipepe/app/modules/home/bindings/home_binding.dart';
import 'package:mi_kalipepe/app/modules/home/views/home_view.dart';
import 'package:mi_kalipepe/app/modules/one/bindings/one_binding.dart';
import 'package:mi_kalipepe/app/modules/one/views/one_view.dart';
import 'package:mi_kalipepe/app/modules/six/bindings/six_binding.dart';
import 'package:mi_kalipepe/app/modules/six/views/six_view.dart';
import 'package:mi_kalipepe/app/modules/three/bindings/three_binding.dart';
import 'package:mi_kalipepe/app/modules/three/views/three_view.dart';
import 'package:mi_kalipepe/app/modules/two/bindings/two_binding.dart';
import 'package:mi_kalipepe/app/modules/two/views/two_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONE,
      page: () => OneView(),
      binding: OneBinding(),
    ),
    GetPage(
      name: _Paths.TWO,
      page: () => TwoView(),
      binding: TwoBinding(),
    ),
    GetPage(
      name: _Paths.THREE,
      page: () => ThreeView(),
      binding: ThreeBinding(),
    ),
    GetPage(
      name: _Paths.FOUR,
      page: () => FourView(),
      binding: FourBinding(),
    ),
    GetPage(
      name: _Paths.FIVE,
      page: () => FiveView(),
      binding: FiveBinding(),
    ),
    GetPage(
      name: _Paths.SIX,
      page: () => SixView(),
      binding: SixBinding(),
    ),
  ];
}
