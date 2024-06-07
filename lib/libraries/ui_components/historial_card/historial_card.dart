import 'package:flutter/material.dart';

import '../image/ebrt_image.dart';
import '../typography/ebrt_text.dart';
import '../typography/ebrt_title.dart';

class HistorialCard extends StatelessWidget {
  const HistorialCard({
    required this.title,
    required this.historial,
    required this.photo,
    super.key,
  });

  final String title;
  final String historial;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EbrtTitle(text: title),
        const SizedBox(height: 5),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: EbrtImage(photoName: photo),
        ),
        const SizedBox(height: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: EbrtText(
            text: historial,
            alignment: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
