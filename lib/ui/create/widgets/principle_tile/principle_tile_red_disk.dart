import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrincipleTileRedDisk extends StatelessWidget {
  final int number;

  const PrincipleTileRedDisk({
    super.key,
    required this.number
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      //margin: const EdgeInsets.only(top: 2), // to align the red disk exactly with the first line's center rather than it being above
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Center(child: Text(number.toString(), style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 0.5, height: 1.0))),
    );
  }
}


