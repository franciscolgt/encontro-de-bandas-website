import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

import '../../libraries/domain/historial/historial.dart';
import '../../libraries/ui_components/historial_card/historial_card.dart';
import '../home/home_page.dart';

class HistorialMaestrosPage extends StatelessWidget {
  const HistorialMaestrosPage({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.logEvent(name: 'historial-maestros');
    return HomePage(
      body: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, i) => HistorialCard(
          title: maestros[i].name,
          historial: maestros[i].curriculum,
          photo: maestros[i].photoPath,
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 50),
        itemCount: maestros.length,
      ),
    );
  }
}
