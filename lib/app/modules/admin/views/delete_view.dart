import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/admin_controller.dart';

class DeleteFoodView extends GetView<AdminController> {
  const DeleteFoodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hapus Data Makanan',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // DropdownButton<Food>(
            //   hint: Text('Select Food to Delete'),
            //   isExpanded: true,
            //   items: foods.map((Food food) {
            //     return DropdownMenuItem<Food>(
            //       value: food,
            //       child: Text(food.name),
            //     );
            //   }).toList(),
            //   onChanged: (Food? food) {
            //     if (food != null) {
            //       deleteFood(food);
            //     }
            //   },
            // ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement logic to delete the selected food item
                // You can call deleteFood(food) here with the selected food item
              },
              child: Text('Hapus'),
              style: ElevatedButton.styleFrom(primary: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
