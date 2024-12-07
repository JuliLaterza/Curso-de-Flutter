void main() {
  
  final String pokemon = 'Julian Alvarez';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abbilities = ['impostor'];
  final List<String> sprites = ['aranña.jpg','picadura.jpg'];
  
  dynamic errorMessage = 'Error!!';
  
  errorMessage = 1;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = true;
  
  
  print("""
  
  $pokemon
  $hp
  $isAlive
  $abbilities
  $sprites
  $errorMessage
  """);
  
  
}