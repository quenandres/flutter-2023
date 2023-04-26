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
