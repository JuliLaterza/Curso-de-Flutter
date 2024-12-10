void main() {
  
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 10000);
  
  print('Eolica: ${ chargePhone( windPlant ) }');
  print('Nuclear: ${ chargePhone( nuclearPlant )}');
}


double chargePhone(EnergyPlant plant ) {
  if (plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}



enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  

  double energyLeft;
  final PlantType type;
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy( double amount); // no se termina de completar el cuerpo de la funcion porque supongamoste que cada planta calcula de una manera diferente.

}


class WindPlant extends EnergyPlant {
  WindPlant({ required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy( double amount){
    energyLeft -= amount;
  }
}


class NuclearPlant implements EnergyPlant {
  
  double energyLeft;
  
  @override
  final PlantType type = PlantType.wind;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
}