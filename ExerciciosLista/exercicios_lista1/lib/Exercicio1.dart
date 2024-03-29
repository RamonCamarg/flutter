import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Inicializa o aplicativo Flutter
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercício 1"), // Define o título da AppBar
        ),
        body: Column(children: [
          // Corpo do aplicativo contendo uma coluna com vários containers
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(255, 255, 0, 0),
            child: Text("Container 1"),
          ),
          Container(
            width: 150,
            height: 150,
            color: Color.fromARGB(255, 255, 238, 0),
            child: Text("Container 2"),
          ),
          Container(
            width: 200,
            height: 200,
            color: Color.fromARGB(255, 0, 255, 94),
            child: Text("Container 3"),
          )
        ]),
      ),
    );
  }
}
