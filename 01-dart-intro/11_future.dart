 void main() {
   print("inicio");
   httpGet('hhhhhhhhhhhhhhhhh').then((value){
     print(value);
   }).catchError((err) {
     print('error: $err');     
   });
   print("fin");
 }

Future<String> httpGet( String url ) {
  return Future.delayed(Duration(seconds: 1), () {
    throw 'soy un error';
    //return 'vengo del futuro';
  });
}

