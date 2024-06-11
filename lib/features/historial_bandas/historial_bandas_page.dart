import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

import '../../libraries/domain/historial/historial.dart';
import '../../libraries/ui_components/historial_card/historial_card.dart';
import '../home/home_page.dart';

class HistorialBandasPage extends StatelessWidget {
  const HistorialBandasPage({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.logEvent(name: 'historial-bandas');
    return HomePage(
      body: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, i) => HistorialCard(
          title: bandas[i].name,
          historial: bandas[i].curriculum,
          photo: bandas[i].photoPath,
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 50),
        itemCount: bandas.length,
      ),
    );
  }
}
