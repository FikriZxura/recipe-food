import 'package:flutter/material.dart';
import 'package:foodrecipeapp/app/routes/app_pages.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login() {
    String emailc = emailController.text.trim();
    String passwordc = passwordController.text.trim();

    if (emailc == "admin@gmail.com" && passwordc == "123") {
      return Get.offAllNamed(Routes.ADMIN);
    } else if (emailc == "fikri@gmail.com" && passwordc == "123") {
      return Get.offAllNamed(Routes.HOME);
    }
  }
}
