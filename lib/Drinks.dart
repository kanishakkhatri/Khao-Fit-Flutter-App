import 'package:flutter/material.dart';

class Drinks extends StatefulWidget {
  const Drinks({super.key});

  @override
  State<Drinks> createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 249, 158),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 125, 51),
        title: Text(
          "Drinks",
        ),
      ),
      body: Column(
        children: [
          Column(
            
          ),
        ]
      ),
    );
  }
}