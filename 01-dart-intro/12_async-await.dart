 void main() async {
   print("inicio");
   try {
    final value = await httpGet('hhhhhhhhhhhhhhhhh');
    print(value);     
   } catch(err) {
     print('Tenemos un error $err');
   }
   print("fin");
 }

Future<String> httpGet( String url ) async {  
  await Future.delayed( const Duration(seconds: 1) );
  throw 'Error en la petición';
  //return 'valor http';
}
