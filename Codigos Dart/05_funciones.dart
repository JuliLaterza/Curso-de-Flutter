void main() {
  
  print('Suma: ${ addNumbers(10,20) }');
  print( 'Suma2.0: ${ sumaNumeros(10,32) }' );
}


int sumaNumeros(int a, int b) => a+b;

int addNumbers( int a, [int b = 0 ]) {
  return a + b;
}