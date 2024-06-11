import 'package:go_router/go_router.dart';

import '../features/cartaz/cartaz_page.dart';
import '../features/historial_bandas/historial_bandas_page.dart';
import '../features/historial_maestros/historial_maestros_page.dart';
import '../features/patrocinadores/patrocinadores.dart';
import '../features/repertorio/repertorio_page.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  redirect: (context, state) {
    final paths = [
      '/repertorio',
      '/historialBandas',
      '/historialMaestros',
      '/patrocinadores',
    ];
    return paths.contains(state.matchedLocation) ? state.matchedLocation : '/';
  },
  routes: [
    GoRoute(
      name: 'Encontro de Bandas de Rio Tinto',
      path: '/',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: CartazPage()),
    ),
    GoRoute(
      name: 'Repertório',
      path: '/repertorio',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: RepertorioPage()),
    ),
    GoRoute(
      name: 'Historial das Bandas',
      path: '/historialBandas',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: HistorialBandasPage()),
    ),
    GoRoute(
      name: 'Historial dos maestros',
      path: '/historialMaestros',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: HistorialMaestrosPage()),
    ),
    GoRoute(
      name: 'Patrocinadores',
      path: '/patrocinadores',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: PatrocinadoresPage()),
    ),
  ],
);
