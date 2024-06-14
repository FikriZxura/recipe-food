import 'package:flutter/material.dart';
import 'package:foodrecipeapp/app/modules/admin/views/addfood_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/admin_controller.dart';

class EditFoodView extends GetView<AdminController> {
  const EditFoodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ubah Data Makanan',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // DropdownButton<Food>(
              //   hint: Text('Select Food to Edit'),
              //   isExpanded: true,
              //   items: foods.map((Food food) {
              //     return DropdownMenuItem<Food>(
              //       value: food,
              //       child: Text(food.name),
              //     );
              //   }).toList(),
              //   onChanged: (Food? food) {
              //     setState(() {
              //       selectedFood = food;
              //       if (food != null) {
              //         nameController.text = food.name;
              //         imageController.text = food.image;
              //         calController.text = food.cal.toString();
              //         timeController.text = food.time.toString();
              //         rateController.text = food.rate.toString();
              //         reviewsController.text = food.reviews.toString();
              //         recipeController.text = food.recipe;
              //         preparationController.text = food.preparation;
              //       }
              //     });
              //   },
              // ),
              AdminTextField(label: 'Nama Makanan'),
              AdminTextField(label: 'Bahan'),
              AdminTextField(label: 'Kategori'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ubah'),
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
