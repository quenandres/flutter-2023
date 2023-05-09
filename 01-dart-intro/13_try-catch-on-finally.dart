 void main() async {
   print("inicio");
   try {
     final value = await httpGet('hhhhhhhhhhhhhhhhh');
     print('exito $value');
   } on Exception catch(err){
     print('Tenemos una exception $err');
   } catch(err) {
     print('Algo terrible paso... $err');
   } finally {
     print('fin de trycatch');
   }
   print("fin");
 }

Future<String> httpGet( String url ) async {  
  await Future.delayed( const Duration(seconds: 1) );
  //throw 'aaaaaaaaaaaaaah';
  throw Exception('No hay parametros en el URL');
  //return 'valor http';
}

