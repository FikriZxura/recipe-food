import 'package:get/get.dart';

import '../modules/admin/bindings/admin_binding.dart';
import '../modules/admin/views/admin_view.dart';
import '../modules/foodDetail/bindings/food_detail_binding.dart';
import '../modules/foodDetail/views/food_detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/premiumform/bindings/premiumform_binding.dart';
import '../modules/premiumform/views/premiumform_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PREMIUMFORM,
      page: () => const PremiumformView(),
      binding: PremiumformBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_DETAIL,
      page: () => FoodDetailView(),
      binding: FoodDetailBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN,
      page: () => const AdminView(),
      binding: AdminBinding(),
    ),
  ];
}
