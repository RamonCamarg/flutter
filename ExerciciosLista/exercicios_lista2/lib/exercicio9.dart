import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personalização de Botões',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonExample(),
    );
  }
}

class ButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Botões'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Botão ElevatedButton personalizado
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Cor de fundo
                textStyle: TextStyle(fontSize: 20), // Tamanho do texto
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Preenchimento
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                elevation: 5, // Elevação
              ),
            ),
            SizedBox(height: 20), // Espaçamento entre os botões
            // Botão TextButton personalizado
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
              style: TextButton.styleFrom(
                primary: Colors.blue, // Cor do texto
                textStyle: TextStyle(fontSize: 20), // Tamanho do texto
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Preenchimento
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
              ),
            ),
            SizedBox(height: 20), // Espaçamento entre os botões
            // Botão OutlinedButton personalizado
            OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add), // Ícone à esquerda do texto
                  SizedBox(width: 8), // Espaçamento entre o ícone e o texto
                  Text('Outlined Button'),
                ],
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.red, // Cor do contorno
                textStyle: TextStyle(fontSize: 20), // Tamanho do texto
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Preenchimento
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                side: BorderSide(color: Colors.red), // Cor do contorno
              ),
            ),
          ],
        ),
      ),
    );
  }
}