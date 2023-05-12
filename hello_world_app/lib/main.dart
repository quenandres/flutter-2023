import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor para inicializar la llave para el stalesswidget

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(        
        body: Center(child: Text('Hola mundo')),
      ),
    );
  }

}