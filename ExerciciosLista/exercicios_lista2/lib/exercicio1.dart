import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Básico',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Básico'),
        ),
        body: LayoutBasico(),
      ),
    );
  }
}

class LayoutBasico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( // Container que envolve todo o layout
      padding: EdgeInsets.all(20.0), // Padding para afastar o conteúdo das bordas
      child: Column( // Column que organiza widgets verticalmente
        mainAxisAlignment: MainAxisAlignment.center, // Alinha os widgets verticalmente ao centro
        crossAxisAlignment: CrossAxisAlignment.center, // Alinha os widgets horizontalmente ao centro
        children: [
          Text( // Widget Texto com título
            'Exemplo de Layout Básico',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0), // Espaçador vertical
          Row( // Row que organiza widgets horizontalmente
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribui os widgets horizontalmente uniformemente
            children: [
              Icon( // Widget de ícone
                Icons.star,
                size: 50.0,
                color: Colors.orange,
              ),
              Image.asset( // Widget de imagem carregada do diretório de assets
                'assets/flutter_logo.png',
                width: 100.0,
                height: 100.0,
              ),
              Text( // Widget de texto
                'Flutter',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
