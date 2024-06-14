import 'package:flutter/material.dart';
import 'package:foodrecipeapp/app/modules/admin/views/addfood_view.dart';
import 'package:foodrecipeapp/app/modules/admin/views/delete_view.dart';
import 'package:foodrecipeapp/app/modules/admin/views/editfood_view.dart';
import 'package:foodrecipeapp/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/admin_controller.dart';

class AdminView extends GetView<AdminController> {
  const AdminView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admin Panel',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAllNamed(Routes.LOGIN);
              },
              icon: Icon(Iconsax.logout5))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdminButton(
              label: 'Tambah Data Makanan',
              onPressed: () {
                Get.to(() => AdminAddFood());
              },
            ),
            const SizedBox(height: 20),
            AdminButton(
              label: 'Ubah Data Makanan',
              onPressed: () {
                Get.to(() => EditFoodView());
              },
            ),
            const SizedBox(height: 20),
            AdminButton(
              label: 'Hapus Data Makanan',
              onPressed: () {
                Get.to(() => DeleteFoodView());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AdminButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const AdminButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle:
            GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      child: Center(
        child: Text(label),
      ),
    );
  }
}
