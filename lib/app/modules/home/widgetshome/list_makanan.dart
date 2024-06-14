import 'package:flutter/material.dart';
// import 'package:foodrecipeapp/app/widgets/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/makanan.dart';
import '../../foodDetail/views/food_detail_view.dart';

// ignore: must_be_immutable
class ListMakanan extends StatelessWidget {
  ListMakanan({
    required this.title,
    required this.icon,
    this.ontap1,
    this.onTap2,
    super.key,
  });
  String title;
  IconData icon;
  late VoidCallback? ontap1;
  late VoidCallback? onTap2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(icon),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        // * LIST MAKANAN PAGI
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                foods.length,
                (index) => Container(
                      margin: const EdgeInsets.only(right: 20, top: 10),
                      width: 200,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => FoodDetailView(food: foods[index]));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: Get.width,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(foods[index].image),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  foods[index].name,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
          ),
        ),
      ],
    );
  }
}
