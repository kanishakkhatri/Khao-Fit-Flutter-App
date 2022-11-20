import 'package:flutter/material.dart';

class Foods extends StatefulWidget {
  const Foods({super.key});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 249, 158),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 125, 51),
        title: Text(
          "Foods",
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