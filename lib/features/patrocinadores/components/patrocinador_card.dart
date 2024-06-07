import 'package:flutter/material.dart';

import '../../../libraries/domain/patrocinador/patrocinador.dart';
import '../../../libraries/ui_components/typography/ebrt_text.dart';

class PatrocinadorCard extends StatelessWidget {
  const PatrocinadorCard(this.patrocinador, {super.key});

  final Patrocinador patrocinador;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 150,
          width: 150,
          child: Placeholder(),
        ),
        const SizedBox(height: 10),
        EbrtText(text: patrocinador.name),
      ],
    );
  }
}
