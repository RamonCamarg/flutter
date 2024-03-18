import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barra de Progresso Dinâmica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProgressIndicatorExample(),
    );
  }
}

class ProgressIndicatorExample extends StatefulWidget {
  @override
  _ProgressIndicatorExampleState createState() => _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample> {
  double _progressValue = 0.0; // Valor inicial da barra de progresso

  // Função para iniciar o processo de carregamento
  void _startLoadingProcess() {
    setState(() {
      _progressValue = 0.0; // Reinicia o valor do progresso
    });

    // Simula o processo de carregamento
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _progressValue = 1.0; // Define o valor máximo do progresso ao completar o processo
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Progresso Dinâmica'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Barra de progresso linear
            LinearProgressIndicator(
              value: _progressValue, // Valor atual do progresso
              backgroundColor: Colors.grey[300], // Cor de fundo da barra de progresso
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Cor da barra de progresso
            ),
            SizedBox(height: 20), // Espaçamento entre a barra de progresso e o botão
            // Botão para iniciar o processo de carregamento
            ElevatedButton(
              onPressed: _startLoadingProcess,
              child: Text('Iniciar Carregamento'),
            ),
          ],
        ),
      ),
    );
  }
}