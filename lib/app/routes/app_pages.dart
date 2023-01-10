import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/auth/providers/auth.dart';
import '../modules/clinic/bindings/clinic_binding.dart';
import '../modules/clinic/views/clinic_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/hospital/bindings/hospital_binding.dart';
import '../modules/hospital/views/hospital_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;
  // static const INITIAL = auth.isAuth ? Routes.HOME : Routes.AUTH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOSPITAL,
      page: () => const HospitalView(),
      binding: HospitalBinding(),
    ),
    GetPage(
      name: _Paths.CLINIC,
      page: () => const ClinicView(),
      binding: ClinicBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
  ];
}
