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