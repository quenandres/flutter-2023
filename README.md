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

#### `17. @override`
_@override_ nos permite sobreescribir metodos de una clase para darle nuestro propia funcionalidad especifica a este metodo.

```dart
void main() {
  //final Hero wolverine = Hero( name: 'Wolverine', power: 'Regeneración');
  final Hero wolverine = Hero( name: 'Wolverine');
  print( wolverine ); // por default dart invoca toString().
  print( wolverine.name );
  print( wolverine.power );
}

class Hero {
  String name;
  String power;
  
  Hero({
    required this.name, 
    this.power = 'Sin poder'
  });
  
  @override
  String toString() {
    return 'su nombre es: $name y su poder es: $power';
  }
}
```


#### `18. Name constructors`  

Podemos crear mas de un constructor con nombres diferentes para identificarlos

```dart
void main() { 
  
  final Map<String, dynamic> rawJson = {
     'name': 'Tony',
     'power': 'Money',
     'isAlive': true
  };
  
  final ironman = Hero.fromJson(rawJson);
  
  print( ironman );
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json )
    : name = json['name'] ?? 'name not found',
      power = json['power'] ?? 'power not found',
      isAlive = json['isAlive'] ?? 'isAlive not found';
  
  @override
  String toString() {
    return '$name su poder es $power su estado es ${ isAlive ? 'Vivo' : 'Muerto' }';
  }
}
```


#### `19. getters y setters`

Para poner entidades privadas deben ir especificadas con guíon bajo `_square`.

```dart
void main() {
  final mySquare = Square( side: 10 );
  mySquare.side = -5;
  print('área ${ mySquare.calculateArea() }');
}

class Square {
  double _side;
  
  Square({ required double side })
    : _side = side;
  
  
  double get area {
    return _side * _side;
  }
  
  set side(double value) {
    print('setting value $value');
    if( value < 0 ) throw 'value must be >=0';
    _side = value;
  }
  
  double calculateArea() {
    return _side * _side;
  }
}
```

#### `20. Aserciones`
Las aserciones dan la posibilidad de enviar un segundo parametro con un mensaje mas especifico de error.
```dart
NonNegativePoint(this.x, this.y)
    : assert(x >= 0),
      assert(y >= 0) {
  print('Punto no negativo: ($x, $y)');
}
```

#### `21. Clases abstractas y enumeraciones`
Una clase abstracta no se puede instanciar por si misma, es usada para instanciar estructuras en otras clases.

```dart
void main() {
  final windPlant = EnergyPlant();
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
 double energyLeft;
 PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy( double amount );
  
}
```
#### `22. Extends`
Teniendo nuestro molde para plantas de energia continuamos con la explicación de extends.
Se implementa la clase y se demuestra el funcionamiento del uso de la clase abstracta.

Cuando extendemos hacemos uso de la herencia.


#### `23. Implements`
Implementar es mas especifico, mientras que extender es mas general


#### `24. Mixins`

Es una implementación muy utilizada en Dart donde una clase tiene subclasses y estas subclasses tienen implementación en clases concretas

<img width="450px" height="150px" src="./docs/mixins.jpg" />

#### `25 Ejercicio con Mixins`  

```dart
abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Estoy volando');
}

abstract class Caminador {
  void caminar() => print('Estoy caminando');
}

abstract class Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminador{}
class Gato extends Mamifero with Caminador{}

class Paloma extends Ave with Volador, Caminador{}
class Pato extends Ave with Caminador, Nadador, Volador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}


void main() {
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final lucas = Pato();
  lucas.caminar();
  lucas.volar();
  lucas.nadar();
}
```

#### `26. Futures`
Un Future representa principalmente el resultado de
una operación asíncrona. Es una promesa de que
pronto tendrás un valor. La promesa puede falla y hay
que manejar la excepción. Los futures son un acuerdo
de que en el futuro tendrás un valor para ser usado.



#### `27. Async - Await`

```dart
 void main() async {
   print("inicio");
   try {
    final value = await httpGet('hhhhhhhhhhhhhhhhh');
    print(value);     
   } catch(err) {
     print('Tenemos un error $err');
   }
   print("fin");
 }

Future<String> httpGet( String url ) async {  
  await Future.delayed( const Duration(seconds: 1) );
  throw 'Error en la petición';
  //return 'valor http';
}
```

#### `28. Try, on, catch y finally`
Se pueden agrupar los errores por tipo.

```dart
 void main() async {
   print("inicio");
   try {
     final value = await httpGet('hhhhhhhhhhhhhhhhh');
     print('exito $value');
   } on Exception catch(err){
     print('Tenemos una exception $err');
   } catch(err) {
     print('Algo terrible paso... $err');
   } finally {
     print('fin de trycatch');
   }
   print("fin");
 }

Future<String> httpGet( String url ) async {  
  await Future.delayed( const Duration(seconds: 1) );
  //throw 'aaaaaaaaaaaaaah';
  throw Exception('No hay parametros en el URL');
  //return 'valor http';
}
```
#### `29. Streams`
Los streams pueden ser retornados y usados como objetos, funciones o métodos, son un flujo de información que puede estar emitiendo valores periódicamente, una única vez, o nunca.
Un ejemplo es cuando se utilizan plataformas de streaming, donde la barra de progreso es la totalidad y cada cuadro es una emision del stream.
Los stream para que funcionen, deben ser escuchados.

```dart
void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {
  
  return Stream.periodic( const Duration(seconds: 1), (value) {
    //print('Desde periodic $value');
    return value;
  }).take(5); // Toma 5 emisiones 0 a 4
}
```

#### `30. async* y await`
```dart
void main() {
  emitNumber().
    listen((int value) {
       print('stream value: $value');
    });
}

Stream<int> emitNumber() async* {
   final valuesToEmit = [1,2,3,4,5];
   for(int i in valuesToEmit) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
   }
}  
```
## `Sección 4 Flutter - Primero pasos`

### Temas puntuales de la sección
Esta sección crearemos nuestra primera aplicación real de Flutter, la que nos enseñará cosas como:

- Stateful y Stateless Widgets
- Scaffold
- FloatingActionButtons
- Column
- Widgets personalizados
- Constantes
- MaterialApp
- Introducción a Material Design 3
- Color Schemes
- AppBars y mucho más

También pasaremos por la explicación de cada archivo y directorio principal de un proyecto de Flutter, ahora sí, es momento de empezar a crear nuestras primeras aplicaciones móviles.

#### `49. Exposición - ¿Qué es Flutter?`
Es un SDK portable - Open source framework - UI Widget Library.

Crear aplicaciones compiladas de forma nativa, multi plataforma con un único código base.

#### `50. Hello World App - Explicación de cada archivo y directorio`

_.dart_tool_: Es utilizada por dart, tiene configuraciones de los paquetes, no es normal manipularla.

_.idea_: Intelij para el editor de codigo.

_android_: Contiene la aplicación de android. Solo se usa para ciertas configuraciones especificas para el sistema operativo.

_ios_: Proyecto de xcode

_lib_: Todo el codigo fuente de flutter.

_linux_: Aplicación de linux

_macos_: Aplicación de MacOS

_test_: Carpeta de pruebas.

_web_: Carpeta de proyecto web.

_windows_: Aplicación para correrla en windows.

_metada_: Archivo utilizado por flutter.

_analysis-options_: Configura el analyser, y permite configurar el linter.

_hello-world-app.iml_: Es utilizado por el IDE IntellJ

_pubspec.lock_: Nos ayuda a darle seguimiento de dependencias del proyecto.

_pubspec.yaml_: Es un archivo de configuración 

#### `52. Hola Mundo`

#### `53. Scaffold y buenas practicas`
Implementa un diseño básico de material, y da las bases para colocar un menú lateral, snack-bars, appbars, bottom sheets y más elementos.

Al tener una pantalla que no cambie, es buena practica ponerla como una constante. Flutter construira muy rapido gracias a funcionamiento interior.

#### `54. Estructura de directorios - Nueva Pantalla`

Creamos primer pantalla extera e importamos la pantalla en el main.

#### `55. Contador - Cambia el estado de la aplicación`
Definimos widgets contantes.

#### `56. Material Design 3`
Se define un Scheme de color para toda la aplicación.


#### `57. Cambiar el estado de la aplicación`
*StatefulWidget:*
```dart
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}
```

```dart
setState(() {
  clickCounter++;
});
```
Es utilizado para renderizar el widget.

#### `58. Tarea - Cambiar la palabra clicks`
Condicional ternaria.
```dart
Text('Cantidad de click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25))
```

#### `59. AppBar y Acciones`
En el AppBar la opción de leading, es para un solo icono a la izquierda.

Mientras que la opción de options, recibe un array de widgets con diferentes funcionalidades.


#### `60. Widgets personalizados`

```dart
CustomButtom( icon: Icons.exposure_minus_1),
```

```dart
class CustomButtom extends StatelessWidget {

  final IconData icon;
  //final onPressed

  const CustomButtom({
    super.key, 
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () { },
      child: Icon(icon),
    );
  }
}
```
#### `61. VoidCallback - Función como argumento`
```dart
CustomButtom( icon: Icons.plus_one_rounded, 
onPressed: () {
  setState(() {
    clickCounter++;
  });
}),
```

#### `65. Inicio de App - YesNo App`


#### `66. Estilo global para la aplicación`
```dart
import 'package:yes_no_app/config/theme/app_theme.dart';
...
theme: AppTheme( selectedColor: 1 ).theme(),
...
```


#### `67. Chat Screen`
Definición de una imagen y CircleAvatar para imagen en la parte principal de la pantalla.

#### `68. ListView - área de los mensajes`
```dart
ListView.builder(
  itemCount: 100,
  itemBuilder: (BuildContext context, int index) { 
    return Text('indice: $index');
  },
)
```

#### `69. Mis Mensajes - Burbuja de chat`
Implementamos el tema en el widget del mensaje.

#### `70. Mensajes de ella - Burbuja de chat`


#### `71. Mostrar mensaje mientras se carga la imagen`

#### `72. TextFormField`
```dart
return TextFormField(
  decoration: inputDecoration,
  onFieldSubmitted: (value) {
    print('submit $value');
  },
  onChanged: (value) {
    print('onChange $value');
  },
);
```


#### `73. Comportamiento del FormField`
Ponemos mas funcionalidad al input con el boton para atrapar los valores en una variable y para crear focus en el input.

## `Sección 6 Yes No - Maybe App - Funcionalidad`

### Temas puntuales de la sección

En esta sección 6 nos enfocaremos en trabajar la lógica de negocio de nuestra aplicación, en pocas palabras haremos funcionar el diseño hecho en la sección aterior.

Puntualmente veremos:

- Gestores de estado
- Mappers
- Peticiones HTTP
- Dio
- Paquetes
- Funciones que retornan valores como callbacks
- Scroll
- Provider
- Y más cosas

Al finalizar la sección tendremos una buena base de como alojar el estado fuera de los widgets y que los widgets se actualicen y tomen la información que necesitan del gestor de estado.

#### `78. Entidad - Message`
La unidad atomica es lo mas puro que va a necesitar la aplicación.
```dart
enum FromWho {mine, hers}

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({
    required this.text, 
    this.imageUrl, 
    required this.fromWho
  });
}
```

#### `79. Provider - Gestor de estado`
Creamos una clase para conectarla al proyecto y que sea la encargada de manejar los mensajes.
```bash
flutter pub add provider
```
```dart
Widget build(BuildContext context) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ChatProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 3 ).theme(),
      title: 'Yes/No APP',
      home: const ChatScreen(),
    ),
  );
}
```

El provider crear un arbol con todos los widget que estan dentro del provider.

#### `81. Mostrar los mensajes del provider`

`context.watch<T>()`, Indica atención en provider especifico o en el primero que encuentre.
`context.read<T>()`, Esta pendiente del provider especificado y lo lee.
`context.select<T, R>(R cb(T value))`, Seleccion especifica dentro del provider.


#### `82. Tarea - Argumentos al Widget`

#### `83. Añadir mensajes al provider`
#### `84. Mover el scroll al final`

#### `85. Respuesta de YesNo - wtf`
Instalamos DIO y lo ponemos en funcionamiento con la petición al api.

#### `86. Mappers`


#### `87. QuickType.io al rescate`
Existe una extension o tambien por pagina web con diferentes parametros.
#### `88. Tarea - Mensajes de ella`
```dart
// Si sabemos que el string no va a estar vacio
_ImageBubble( imageUrl: message.imageUrl! )

// De lo contrario
_ImageBubble( imageUrl: message.imageUrl ?? 'https://...' )
```



