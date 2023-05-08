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