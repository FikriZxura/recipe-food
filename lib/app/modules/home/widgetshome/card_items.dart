import 'package:flutter/material.dart';
import 'package:foodrecipeapp/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/colors.dart';

class CardItems extends StatelessWidget {
  const CardItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.PREMIUMFORM),
      child: Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
          width: Get.width,
          decoration: BoxDecoration(
            color: hijauSage.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upgrade ke Premium!",
                    style: GoogleFonts.roboto(
                      fontSize: 25,
                      color: bgColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Buka fitur eksklusif dan bawa masakan\nAnda ke tingkat berikutnya",
                    style: GoogleFonts.roboto(
                        fontSize: 13,
                        color: bgColor,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),

              // * AVATAR
              Image.asset(
                "assets/images/avatarCard_img.png",
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
