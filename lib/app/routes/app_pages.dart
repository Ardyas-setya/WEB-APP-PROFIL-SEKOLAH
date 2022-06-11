import 'package:get/get.dart';

import 'package:mi_kalipepe/app/modules/home/bindings/home_binding.dart';
import 'package:mi_kalipepe/app/modules/home/views/home_view.dart';
import 'package:mi_kalipepe/app/modules/one/bindings/one_binding.dart';
import 'package:mi_kalipepe/app/modules/one/views/one_view.dart';
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
  ];
}
