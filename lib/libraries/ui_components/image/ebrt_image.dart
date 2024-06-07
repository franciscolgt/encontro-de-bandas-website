import 'package:flutter/material.dart';

class EbrtImage extends StatelessWidget {
  const EbrtImage({
    required this.photoName,
    this.height,
    this.fitWidth = true,
    super.key,
  });

  final String photoName;
  final double? height;
  final bool fitWidth;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$photoName',
      fit: fitWidth ? BoxFit.fitWidth : null,
      height: height,
    );
  }
}
