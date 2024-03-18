import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercício 2"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, // alinhamento vertical
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Text("Item 1", style: TextStyle(color: Colors.white)),
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
                        Text("Item 2", style: TextStyle(color: Colors.white)),
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
                        Text("Item 3", style: TextStyle(color: Colors.white)),
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