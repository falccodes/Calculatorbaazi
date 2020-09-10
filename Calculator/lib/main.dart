import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculatorbaazi",
      theme: new ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: new HomePage(),
    );
  }
}
