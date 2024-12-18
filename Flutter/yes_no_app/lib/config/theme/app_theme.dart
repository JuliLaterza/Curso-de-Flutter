import 'package:flutter/material.dart';


const Color _customColor = Color.fromARGB(255, 43, 86, 132);

const List<Color> colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.purple,
];



class AppTheme {

  final int selectedColor;

  AppTheme({this.selectedColor = 0,})
    : assert(selectedColor >= 0 && selectedColor < colorTheme.length - 1)
  ;


  // ignore: empty_constructor_bodies
  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: colorTheme[selectedColor]);
  }

}