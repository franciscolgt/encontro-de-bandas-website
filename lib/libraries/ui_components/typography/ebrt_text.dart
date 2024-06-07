import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EbrtText extends StatelessWidget {
  const EbrtText({
    required this.text,
    this.isBold = false,
    this.alignment,
    super.key,
  });

  final String text;
  final bool isBold;
  final TextAlign? alignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat()
          .copyWith(fontSize: 14, fontWeight: isBold ? FontWeight.bold : null),
      textAlign: alignment ?? TextAlign.start,
    );
  }
}
