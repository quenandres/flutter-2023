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
