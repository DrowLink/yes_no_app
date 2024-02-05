import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF78065C);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.red,
];

//class
class AppTheme {
  final int selectedColor;
  AppTheme({
    this.selectedColor = 0
    }): assert(selectedColor >= 0 && selectedColor < _colorThemes.length-1 , 'Colors must be between 0 and ${_colorThemes.length - 1}');
  //method
  ThemeData theme() { 
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}
