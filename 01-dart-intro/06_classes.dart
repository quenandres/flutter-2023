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


///////////////////////////////////////////

/*

void main() {
  //final Hero wolverine = Hero( name: 'Wolverine', power: 'Regeneración');
  final Hero wolverine = Hero( name: 'Wolverine');
  print( wolverine );
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
*/