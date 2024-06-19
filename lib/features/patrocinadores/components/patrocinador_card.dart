import 'package:flutter/material.dart';

import '../../../libraries/domain/patrocinador/patrocinador.dart';
import '../../../libraries/ui_components/image/ebrt_image.dart';
import '../../../libraries/ui_components/typography/ebrt_text.dart';

class PatrocinadorCard extends StatelessWidget {
  const PatrocinadorCard(this.patrocinador, {super.key});

  final Patrocinador patrocinador;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 150,
          width: 200,
          child:
              EbrtImage(photoName: 'patrocinadores/${patrocinador.photoPath}'),
        ),
        const SizedBox(height: 10),
        Container(
          width: 200,
          alignment: Alignment.center,
          child: EbrtText(
            text: patrocinador.name,
            alignment: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
