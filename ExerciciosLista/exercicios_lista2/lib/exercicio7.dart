import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uso do Stack',
      home: StackExample(),
    );
  }
}

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Stack'),
      ),
      body: Stack(
        children: <Widget>[
          // Widget de fundo
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: double.infinity,
          ),
          // Widget sobreposto no canto superior esquerdo
          Positioned(
            top: 50.0,
            left: 50.0,
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Widget Sobreposto',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          // Segundo widget sobreposto no canto inferior direito
          Positioned(
            bottom: 50.0,
            right: 50.0,
            child: Container(
              width: 150.0,
              height: 150.0,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Outro Widget',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
