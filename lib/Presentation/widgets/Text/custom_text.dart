import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontsize,
    required this.color,
  });
  final String text;
  final FontWeight fontWeight;
  final double fontsize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
