import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../libraries/domain/repertorio/repertorio.dart';
import '../home/home_page.dart';
import 'components/band_repertorio.dart';

class RepertorioPage extends StatelessWidget {
  const RepertorioPage({super.key});

  @override
  Widget build(BuildContext context) {
    analytics.logEvent(name: 'repertorio');
    return HomePage(
      body: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, i) => BandRepertoire(repertorios[i]),
        separatorBuilder: (_, __) => const SizedBox(height: 50),
        itemCount: repertorios.length,
      ),
    );
  }
}
