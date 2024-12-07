void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abbilities': ['impostor'],
    'sprites': {
      1: 'ditto.jpg',
      2: 'ditto2.jpg',
    }
  };
  
  print(pokemon);
  
  print('Nombre: ${pokemon['name']}');
  print('Sprite: ${pokemon['sprites'][1]}'); // Ahora funciona
}
