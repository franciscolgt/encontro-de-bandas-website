import 'package:flutter/material.dart';

import '../../../libraries/domain/repertorio/repertorio.dart';
import '../../../libraries/ui_components/typography/ebrt_title.dart';
import 'music.dart';

class BandRepertoire extends StatelessWidget {
  const BandRepertoire(this.repertorio, {super.key});

  final Repertorio repertorio;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EbrtTitle(text: repertorio.band),
        const SizedBox(height: 5),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, i) => Music(repertorio.musics[i]),
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemCount: repertorio.musics.length,
        ),
      ],
    );
  }
}
