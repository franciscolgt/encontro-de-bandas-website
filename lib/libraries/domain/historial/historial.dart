import 'bandas.dart';
import 'maestros.dart';

class Historial {
  Historial({
    required this.name,
    required this.curriculum,
    required this.photoPath,
  });

  final String name;
  final String curriculum;
  final String photoPath;
}

final maestros = [
  Historial(
    name: 'María García Bustos',
    curriculum: maestroVincios,
    photoPath: 'maestro_vincios.jpeg',
  ),
  Historial(
    name: 'Pedro Maia',
    curriculum: maestroAlvarenga,
    photoPath: 'maestro_alvarenga.jpeg',
  ),
  Historial(
    name: 'Rodolfo Maia',
    curriculum: maestroRioTinto,
    photoPath: 'maestro_rio_tinto.jpg',
  ),
];

final bandas = [
  Historial(
    name: 'Agrupación Musical de Vincius',
    curriculum: bandaVincios,
    photoPath: 'photo_vincios.png',
  ),
  Historial(
    name: 'Sociedade Filarmónica Santa Cruz de Alvarenga',
    curriculum: bandaAlvarenga,
    photoPath: 'photo_alvarenga.jpeg',
  ),
  Historial(
    name: 'Banda S. Cristóvão de Rio Tinto',
    curriculum: bandaRioTinto,
    photoPath: 'photo_rio_tinto.jpg',
  ),
];
