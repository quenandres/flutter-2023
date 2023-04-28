# `Flutter - Movil de Cero a experto 2023`

### Sección 2: Introducción a Dart
Temas puntuales de la sección
Esta es una sección introductoria para personas que nunca han tocado Dart en su vida, o quieren tener la base necesaria para tomar este curso de Flutter.

*Temas puntuales*:

- Hola Mundo
- Tipos de datos
- Estructuras de colección de datos
- Tipos de parámetros
- Clases
- Diferentes constructores
- Getters y Setters
- Extends, Implements y Mixins
- Futures
- Streams
- Async, Async* y Await
- Decoradores (@override)
- Y más..

El objetivo es darles a ustedes una introducción a Dart para que se sientan cómodos trabajando en el lenguaje, es muy similar a otros, y su curva de aprendizaje no es difícil, pero tengan presente que cada persona aprende a ritmos diferentes.

#### `8. ¿Qué es Dart? - Exposición`
Es un lenguaje de programación, de lado del cliente optimizado para aplicaciónes.
- Optimizado para el UI.
  - Todo fue pensado en su creación para trabajar con flutter.
- Permite el Hot Reload.
  - Es supremamente rapido para el desarrollo, se cambian piezas y se ven reflejadas en segundos.
- Rapido en todas las plataformas (ARM & x64).

Escribimos el codigo de Flutter en Dart, seguimos lineamientos y termina siendo compilado a codigo de movil.


#### `9. Hola Mundo - Dart`
[https://dartpad.dev](https://dartpad.dev)

// Formas de definir variables
```dart
var myName = 'Jhonatan'; // Dart infiere el valor de la variable
String myName = 'Jhonatan'; // Dart toma el valor según la definición
final myName = 'Jhonatan'; // Funciona similar a una constante pero no es lo mismo.
late final = 'Jhonatan'; // Late permite decirle a Dart que esa variable tendrá un valor al momento de usarse, es responsabilidad del desarrollador asegurar que eso se cumpla.

const myName = 'Jhonatan ñandú';  
print('Hola $myName');
print('Hola ${myName.toUpperCase()}'); // Interpolación de string
```


#### `10. Tipos de variables`

```dart
void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto.png'];
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}
```


#### `11. Dynamic type`
Se debe evitar usar el tipo dinamico, pero se debe encontrar un balance para utilizar algunas veces.
Por defecto es null.
el nullsafety es dart diciendo si una variable puede ser nula o no.


#### `12. Maps`
```dart
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
```


#### `13. List, iterables y Sets`

Listado: `[]`
Iterable: `()` Es una colección de elementos que se puede leer de manera secuencial. Es un objeto que puede contar elementos que se encuentren dentro de él, como listas, sets, arreglos, etc.
Set: `{}` Similar a los mapas, pero solo tiene datos que no son duplicados.

#### `14. Funciones y parámetros`

```dart
void main() {  
  print(greetEveryone());
  print('Suma: ${ addTwoNumbers(10,5) }');
}

String greetEveryone() => 'Hello';

/*int addTwoNumbers( int a, int b ) {
   return a + b;
}*/

int addTwoNumbers( int a, int b ) => a + b;


int addTwoNumbersOptional( int a, [int b = 0] ) {
  // b = b ?? 0;
  // b ??= 0;
  return a + b;
}
```

#### `15. Parámetros con nombre`
En flutter podemos mandar parametros con nombres que saltaran el posicionamiento de las variables.

```dart
void main() {  
  print(greetPerson( name: 'Jhonatan', message: 'Hi' ));
}

String greetPerson( { required String name, String message = 'Hola' } ) {
  return '$message, $name';
}
```


#### `16. Clases`

Son la representactión digital de los objetos en el mundo real.
En dart el constructor tiene el mismo nombre de la clase.

```dart
void main() {
  final Hero wolverine = Hero('Wolverine','Regeneración');
  print( wolverine );
  print( wolverine.name );
  print( wolverine.power );
}

class Hero {
  String name;
  String power;
  
  Hero(this.name, this.power);
}
```


