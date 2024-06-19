import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PagesMenu extends StatelessWidget {
  const PagesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MenuButton(
          label: 'Repertório',
          onPressed: () => context.go('/repertorio'),
        ),
        const SizedBox(width: 20),
        MenuButton(
          label: 'Historial das Bandas',
          onPressed: () => context.go('/historialBandas'),
        ),
        const SizedBox(width: 20),
        MenuButton(
          label: 'Historial dos Maestros',
          onPressed: () => context.go('/historialMaestros'),
        ),
        const SizedBox(width: 20),
        MenuButton(
          label: 'Apoios',
          onPressed: () => context.go('/apoios'),
        ),
      ],
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith(
          (_) => GoogleFonts.montserrat().copyWith(fontSize: 16),
        ),
        foregroundColor: WidgetStateProperty.resolveWith((_) => Colors.black),
        overlayColor: WidgetStateProperty.resolveWith(
          (_) => Colors.grey.withOpacity(0.2),
        ),
      ),
      child: Text(label),
    );
  }
}
