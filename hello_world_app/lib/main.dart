import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter_functions_screen.dart';
//import 'package:hello_world_app/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor para inicializar la llave para el stalesswidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange
      ),
      home: const CounterFunctionsScreen()
    );
  }
}