void main() {
  final windPlant = WindPlant( initialEnergy: 90 );  
  final nuclearPlant = NuclearPlant( energyLeft: 50 );  

  
  
  print(' wind: ${chargePhone(windPlant)} ');
  print(' nuclearPlant: ${chargePhone(nuclearPlant)} ');
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
 final PlantType type; // nuclear, wind, water
  
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

class NuclearPlant implements EnergyPlant {
   double energyLeft;
   final PlantType type = PlantType.nuclear; // nuclear, wind, water
   
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount *0.5);
  }

}