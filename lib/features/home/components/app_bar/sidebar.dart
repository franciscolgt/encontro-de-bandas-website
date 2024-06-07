import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../libraries/ui_components/typography/ebrt_text.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          _SideBarItem(title: 'Cartaz', path: '/'),
          _SideBarItem(title: 'Repertório', path: '/repertorio'),
          _SideBarItem(title: 'Historial das Bandas', path: '/historialBandas'),
          _SideBarItem(
            title: 'Historial dos Maestros',
            path: '/historialMaestros',
          ),
          _SideBarItem(title: 'Patrocinadores', path: '/patrocinadores'),
        ],
      ),
    );
  }
}

class _SideBarItem extends StatelessWidget {
  const _SideBarItem({
    required this.title,
    required this.path,
  });

  final String title;
  final String path;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: EbrtText(text: title),
      onTap: () => context.go(path),
    );
  }
}
