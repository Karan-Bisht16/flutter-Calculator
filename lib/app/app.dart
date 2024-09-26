import 'package:flutter/material.dart';
import 'package:calculator/views/calculator.view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Journey",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF020412),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Basic Calculator",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
          ),
          backgroundColor: const Color(0xFF020412),
        ),
        body: const CalculatorView(),
      ),
    );
  }
}
