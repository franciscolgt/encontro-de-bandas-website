import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
      ),
    );
  }
}
