import 'package:flutter/material.dart';

import '../../../libraries/domain/musica/musica.dart';
import '../../../libraries/ui_components/typography/ebrt_text.dart';

class Music extends StatelessWidget {
  const Music(this.music, {super.key});

  final Musica music;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EbrtText(text: music.name, isBold: true),
        EbrtText(text: music.author),
      ],
    );
  }
}
