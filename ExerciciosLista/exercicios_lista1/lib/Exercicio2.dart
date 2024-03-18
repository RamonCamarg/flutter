import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Inicializa o aplicativo Flutter
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercício 2"), // Título da AppBar
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, // Alinhamento vertical dos containers
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red, // Cor de fundo do primeiro container
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Text("Item 1",
                            style: TextStyle(
                                color: Colors
                                    .white)), // Texto dentro do primeiro container
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Color.fromARGB(255, 234, 255, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Text("Item 2",
                            style: TextStyle(
                                color: Colors
                                    .white)), // Texto dentro do segundo container
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Color.fromARGB(255, 0, 255, 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Text("Item 3",
                            style: TextStyle(
                                color: Colors
                                    .white)), // Texto dentro do terceiro container
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
