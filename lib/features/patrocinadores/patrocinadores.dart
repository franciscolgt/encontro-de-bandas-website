import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../libraries/domain/patrocinador/patrocinador.dart';
import '../../libraries/ui_components/typography/ebrt_title.dart';
import '../home/home_page.dart';
import 'components/patrocinador_card.dart';

class PatrocinadoresPage extends StatelessWidget {
  const PatrocinadoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    analytics.logEvent(name: 'patrocinadores');
    return HomePage(
      body: Column(
        children: [
          const EbrtTitle(text: 'Os nossos apoios:'),
          const SizedBox(height: 30),
          Wrap(
            spacing: 40,
            runSpacing: 20,
            children: patrocinadores.map(PatrocinadorCard.new).toList(),
          ),
        ],
      ),
    );
  }
}
