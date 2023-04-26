void main() {
  final Map<String, dynamic>pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['emulation'],
    'sprites': {
      1: 'front_ditto.png',
      2: 'back_ditto.jpg'
    }
  };
  
  
  print(pokemon);
  
  print('Name: ${ pokemon['name'] }');
  print('Images: ${ pokemon['sprites'] }');
  print('Front: ${ pokemon['sprites'][1] }');
  print('Back: ${ pokemon['sprites'][2] }');
  
}