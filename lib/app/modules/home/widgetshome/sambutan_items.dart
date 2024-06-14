// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:foodrecipeapp/app/modules/home/widgetshome/tableAnggota.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Sambutan extends StatelessWidget {
  const Sambutan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 25),
      child: Row(
        children: [
          Text(
            "Mau masak apa\nKamu hari ini ?",
            style: GoogleFonts.poppins(
              fontSize: 30,
              height: 1,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.notification,
            ),
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size(55, 55),
            ),
          ),
        ],
      ),
    );
  }
}
