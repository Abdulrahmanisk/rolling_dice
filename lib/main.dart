import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(35, 3, 66, 1),
              Color.fromRGBO(103, 32, 166, 1),
              Color.fromRGBO(150, 87, 213, 1),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const Center(
            child: Text(
              'Mohammed Al-Shehri',
              style: TextStyle(
                fontSize: 40,
                 color: Colors.white
                 ),
            ),
          ),
        ),
      ),
    ),
  );
}
