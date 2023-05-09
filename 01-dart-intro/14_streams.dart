void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {
  
  return Stream.periodic( const Duration(seconds: 1), (value) {
    //print('Desde periodic $value');
    return value;
  }).take(5); // Toma 5 emisiones 0 a 4
}