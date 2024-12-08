void main() {
  
  print('Suma: ${ addNumbers(10,20) }');
  print( 'Suma2.0: ${ sumaNumeros(10,32) }' );
  
  
  print( greetPerson (name: 'Juli') );
}


int sumaNumeros(int a, int b) => a+b;

int addNumbers( int a, [int b = 0 ]) {
  return a + b;
}


String greetPerson( { required String name, String message = 'Hola,' }) {
  
  return '$message $name';
}