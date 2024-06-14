import 'package:flutter/material.dart';
import 'package:foodrecipeapp/app/modules/home/widgetshome/card_items.dart';
import 'package:foodrecipeapp/app/widgets/colors.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

// import '../../foodDetail/views/food_detail_view.dart';
import '../controllers/home_controller.dart';
import '../widgetshome/list_makanan.dart';
import '../widgetshome/sambutan_items.dart';
import '../widgetshome/tableAnggota.dart';

// class HomeView extends GetView<HomeController> {
//   const HomeView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.add),
//             onPressed: () {
//               Get.toNamed('/addFood');
//             },
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: Obx(() {
//           return ListView.builder(
//             itemCount: controller.foods.length,
//             itemBuilder: (context, index) {
//               final food = controller.foods[index];
//               return ListTile(
//                 title: Text(food.name, style: GoogleFonts.poppins()),
//                 subtitle:
//                     Text('Kalori: ${food.cal} kcal, Waktu: ${food.time} menit'),
//                 onTap: () {
//                   Get.to(() => FoodDetailView(food: food));
//                 },
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.edit),
//                       onPressed: () {
//                         Get.toNamed('/editFood',
//                             arguments: {'index': index, 'food': food});
//                       },
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.delete),
//                       onPressed: () {
//                         controller.deleteFood(index);
//                       },
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         }),
//       ),
//     );
//   }
// }

class HomeView extends GetView<HomeController> {
  // ignore: use_super_parameters
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * Sambutan dan iconbutton
                const Sambutan(),
                const SizedBox(
                  height: 40,
                ),
                // * CARD
                const CardItems(),
                const SizedBox(
                  height: 30,
                ),
                // * PAGI & Tampilkan Semua
                ListMakanan(
                  title: "PAGI",
                  icon: Iconsax.sun_fog5,
                  ontap1: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                ListMakanan(
                  icon: Iconsax.sun_15,
                  title: "SIANG",
                  ontap1: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                ListMakanan(
                  icon: Iconsax.moon5,
                  title: "MALAM",
                  ontap1: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Daftar Anggota Kelompok",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 25, bottom: 20),
                  child: Divider(
                    thickness: 2,
                    color: hijauSage,
                  ),
                ),
                // * Tabel  data
                const TableAnggota(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
