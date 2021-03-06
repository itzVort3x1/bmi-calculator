import 'package:flutter/material.dart';
import 'input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue.shade800,
        scaffoldBackgroundColor: Colors.blue.shade800,
      ),
      home: InputPage(),
    );
  }
}

