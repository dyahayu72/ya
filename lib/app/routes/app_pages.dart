import 'package:get/get.dart';

import 'package:mytsel/app/modules/home/bindings/home_binding.dart';
import 'package:mytsel/app/modules/home/views/home_view.dart';
import 'package:mytsel/app/modules/login/bindings/login_binding.dart';
import 'package:mytsel/app/modules/login/views/login_view.dart';

import '../modules/home/bindings/booking_binding.dart';
import '../modules/home/views/booking_view.dart';
import '../modules/home/bindings/antri_binding.dart';
import '../modules/home/views/antri_view.dart';
// import 'package:mytsel/app/modules/booking/bindings/booking_binding.dart';
// import 'package:mytsel/app/modules/booking/views/booking_view.dart';

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
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.Booking,
      page: () => BookingView(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: _Paths.Antri,
      page: () => AntriView(),
      binding: AntriBinding(),
    ),
  ];
  
}
