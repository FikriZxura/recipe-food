import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../../../models/makanan.dart';
import '../controllers/admin_controller.dart';

class AdminAddFood extends GetView<AdminController> {
  // final TextEditingController nameController = TextEditingController();
  // final TextEditingController imageController = TextEditingController();
  // final TextEditingController calController = TextEditingController();
  // final TextEditingController timeController = TextEditingController();
  // final TextEditingController rateController = TextEditingController();
  // final TextEditingController reviewsController = TextEditingController();
  // final TextEditingController recipeController = TextEditingController();
  // final TextEditingController preparationController = TextEditingController();

  // void addFood() {
  //   String name = nameController.text.trim();
  //   String image = imageController.text.trim();
  //   double cal = double.parse(calController.text.trim());
  //   double time = double.parse(timeController.text.trim());
  //   double rate = double.parse(rateController.text.trim());
  //   int reviews = int.parse(reviewsController.text.trim());
  //   String recipe = recipeController.text.trim();
  //   String preparation = preparationController.text.trim();

  //   Food newFood = Food(
  //     name: name,
  //     image: image,
  //     cal: cal,
  //     time: time,
  //     rate: rate,
  //     reviews: reviews,
  //     isLiked: false,
  //     recipe: recipe,
  //     preparation: preparation,
  //   );

  //   foods.add(newFood);
  //   Get.back();
  //   Get.snackbar('Success', 'Food added successfully',
  //       snackPosition: SnackPosition.BOTTOM);
  // }

  AdminAddFood({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Data Makanan',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AdminTextField(label: 'Nama Makanan'),
              AdminTextField(label: 'Bahan'),
              AdminTextField(label: 'Kategori'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Tambah'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    fixedSize: Size(Get.width, 40)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdminTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final TextInputType? keyboardType;

  const AdminTextField({
    this.controller,
    this.label,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
