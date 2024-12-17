import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter_functions_screens.dart';
//import 'package:hello_world_app/presentation/screens/counter_screen.dart'; //Vienen muchos widgets


void main() {
  //Widget PRINCIPAL, INICIAL  
  runApp( const MyApp() );
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Counter_Functions_Screen()
    );
  }

}