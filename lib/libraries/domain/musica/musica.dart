class Musica {
  Musica({
    required this.name,
    required this.author,
  });

  final String name;
  final String author;
}

final musicasVincios = [
  Musica(name: 'Santiago Mestre', author: 'Óscar Navarro'),
  Musica(name: 'Concerto for Trombone and Band', author: 'N. Rimsky-Korsakov'),
  Musica(name: 'Jubeliee Fanfare', author: 'Yosuke Fukuda'),
  Musica(name: 'Fantasia sobre tres temas galegos', author: 'Simón Couceiro'),
  Musica(name: 'The seventh night of July', author: 'Itaru Sakai'),
];

final musicasAlvarenga = [
  Musica(name: 'Feria de Júlio', author: 'Fernando Bonete'),
  Musica(name: 'Marcha Eslava', author: 'P.I. Tchaikovsky'),
  Musica(name: 'The Greatest Hits', author: 'Diogo Costa'),
  Musica(name: 'Cantar Terra', author: 'Diogo Costa'),
  Musica(name: 'Alvarenga em Marcha', author: 'Fernando Mendes'),
];
