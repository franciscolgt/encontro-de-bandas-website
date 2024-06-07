import '../musica/musica.dart';

class Repertorio {
  Repertorio({
    required this.band,
    required this.musics,
  });

  final String band;
  final List<Musica> musics;
}

final repertorios = [
  Repertorio(band: 'Agrupación Musical de Vincius', musics: musicasVincios),
  Repertorio(
    band: 'Sociedade Filarmónica Santa Cruz de Alvarenga',
    musics: musicasVincios,
  ),
  Repertorio(band: 'Banda S. Cristóvão de Rio Tinto', musics: musicasVincios),
];
