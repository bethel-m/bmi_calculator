import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color(0xFF1D2136),
            onPrimary: Colors.white,
            secondary: Color(0xFFE83D66),
            onSecondary: Colors.white,
            error: Colors.yellow,
            onError: Colors.black,
            background: Colors.black,
            onBackground: Colors.white,
            surface: Colors.grey,
            onSurface: Colors.white,
          ),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          appBarTheme: AppBarTheme(
            color: Color(0xFF0A0E21),
          )),
      home: InputPage(),
    );
  }
}
