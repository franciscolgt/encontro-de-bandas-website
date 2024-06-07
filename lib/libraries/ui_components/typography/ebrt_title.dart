import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EbrtTitle extends StatelessWidget {
  const EbrtTitle({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat().copyWith(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
