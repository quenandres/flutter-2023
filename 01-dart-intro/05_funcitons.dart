void main() {  
  print(greetEveryone());
  print('Suma: ${ addTwoNumbers(10,5) }');
}

String greetEveryone() => 'Hello';

/*int addTwoNumbers( int a, int b ) {
   return a + b;
}*/

int addTwoNumbers( int a, int b ) => a + b;


int addTwoNumbersOptional( int a, [int b=0] ) {
  // b = b ?? 0;
  // b ??= 0;
  return a + b;
}

