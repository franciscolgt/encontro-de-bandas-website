import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BscrtLogo extends StatelessWidget {
  const BscrtLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go('/'),
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Image.asset(
        'assets/images/logo_bscrt.png',
        height: 50,
        width: 50,
      ),
    );
  }
}
