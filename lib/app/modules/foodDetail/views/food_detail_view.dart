// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:pdf/widgets.dart' as pw;
// import '../../../models/makanan.dart';
// import '../../../widgets/colors.dart';
// import '../controllers/food_detail_controller.dart';

// class FoodDetailView extends GetView<FoodDetailController> {
//   final Food food;

//   const FoodDetailView({Key? key, required this.food}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: hijauSage,
//         title: Text(
//           food.name,
//           style: GoogleFonts.poppins(
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.print),
//             onPressed: () {
//               printFood(food);
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: Get.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   image: DecorationImage(
//                     image: AssetImage(food.image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                     food.image,
//                     width: double.infinity,
//                     height: 250,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 food.name,
//                 style: GoogleFonts.poppins(
//                     fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 'Kalori: ${food.cal} kcal',
//                 style: GoogleFonts.poppins(fontSize: 16),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 'Waktu: ${food.time} menit',
//                 style: GoogleFonts.poppins(fontSize: 16),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 'Resep:',
//                 style: GoogleFonts.poppins(
//                     fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 food.recipe,
//                 style: GoogleFonts.poppins(fontSize: 16),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 'Cara Pembuatan:',
//                 style: GoogleFonts.poppins(
//                     fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 food.preparation,
//                 style: GoogleFonts.poppins(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:iconsax/iconsax.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';

import '../../../models/makanan.dart';
import '../../../widgets/colors.dart';
import '../controllers/food_detail_controller.dart';

class FoodDetailView extends GetView<FoodDetailController> {
  final Food? food;
  const FoodDetailView({Key? key, this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijauSage,
        title: Text(
          food!.name,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Iconsax.printer),
            onPressed: () {
              printFood(food!);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(food!.image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    food!.image,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                food!.name,
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Kalori: ${food!.cal} kcal',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                'Waktu: ${food!.time} menit',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                'Resep:',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                food!.recipe,
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                'Cara Pembuatan:',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                food!.preparation,
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void printFood(Food food) {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Column(
          children: [
            pw.Text(food.name, style: pw.TextStyle(fontSize: 24)),
            pw.SizedBox(height: 10),
            pw.Text('Kalori: ${food.cal} kcal'),
            pw.Text('Waktu: ${food.time} menit'),
            pw.SizedBox(height: 10),
            pw.Text('Resep:', style: pw.TextStyle(fontSize: 20)),
            pw.Text(food.recipe),
            pw.SizedBox(height: 10),
            pw.Text('Cara Pembuatan:', style: pw.TextStyle(fontSize: 20)),
            pw.Text(food.preparation),
          ],
        );
      },
    ),
  );

  Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
