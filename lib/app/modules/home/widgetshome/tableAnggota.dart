import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/anggota.dart';
import '../../../widgets/colors.dart';

class TableAnggota extends StatelessWidget {
  const TableAnggota({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Table(
        border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(
            decoration: const BoxDecoration(
              color: hijauSage,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Nama',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'NIM',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          ...users.map((user) {
            return TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    user.name,
                    style: GoogleFonts.poppins(),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    user.nim,
                    style: GoogleFonts.poppins(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
            // ignore: unnecessary_to_list_in_spreads
          }).toList(),
        ],
      ),
    );
  }
}
