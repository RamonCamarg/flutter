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
            color: Color.fromARGB(
                255, 255, 8, 0), // Cor de fundo do primeiro container
            child: Text("Container 1"), // Texto dentro do primeiro container
          ),
          Container(
            width: 150,
            height: 150,
            color: Color.fromARGB(
                255, 255, 208, 0), // Cor de fundo do segundo container
            child: Text("Container 2"), // Texto dentro do segundo container
          ),
          Container(
            width: 200,
            height: 200,
            color: const Color.fromARGB(
                255, 0, 255, 8), // Cor de fundo do terceiro container
            child: Text("Container 3"), // Texto dentro do terceiro container
          )
        ]),
      ),
    );
  }
}
