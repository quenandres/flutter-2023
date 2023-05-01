void main() {
  final windPlant = WindPlant( initialEnergy: 90 );  
  print(windPlant.energyLeft);  
  print(' wind: ${chargePhone(windPlant)} ');
}

enum PlantType { nuclear, wind, water }


double chargePhone( EnergyPlant plant ) {
  if( plant.energyLeft < 10 ) {
    throw Exception('not enough energy');
  }  
  return plant.energyLeft - 10;
}


abstract class EnergyPlant {
 double energyLeft;
 PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy( double amount );
}

// Extends o implements
class WindPlant extends EnergyPlant {
  WindPlant( { required double initialEnergy } )
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}