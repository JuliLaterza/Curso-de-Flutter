void main() {
   
  final Map <String, dynamic> rawJson = {
    'name': 'Tony',
    'isAlive': true,
    'power': 'Ingenieria'
    
  };
  
  final Map <String, dynamic> rawJson2 = {
    'name' : 'Peter Parker',
    'isAlive' : true
  };
  
  final ironman = Hero.fromjson(rawJson);
  
  print(ironman);
  
  final spyderman = Hero.fromjson(rawJson2);
  print(spyderman);
  
}


class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero ({
    required this.name,
    required this.power,
    required this.isAlive,
  });
  
  
  Hero.fromjson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString() {
    return '$name, $power, ${ isAlive ? 'Yes!!': 'Ripeo' }';
  }
  
  
}