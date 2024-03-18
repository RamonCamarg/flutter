import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedContainerExample(),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  // Variáveis para controlar a posição e a cor do contêiner animado
  double _left = 0;
  Color _color = Color.fromARGB(255, 195, 255, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container com animação'), // Título da AppBar
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Ao ser clicado, altera a posição e a cor do contêiner animado
            setState(() {
              _left = _left == 0
                  ? 200
                  : 0; // Altera a posição horizontal do contêiner
              _color = _color == Color.fromARGB(255, 254, 0, 0)
                  ? Color.fromARGB(255, 238, 255, 0)
                  : Color.fromARGB(255, 43, 255, 0); // Altera a cor do contêiner
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1), // Duração da animação
            curve: Curves.easeInOut, // Curva de animação
            margin: EdgeInsets.only(
                left: _left), // Muda a posição horizontal do contêiner
            width: 100, // Largura do contêiner
            height: 100, // Altura do contêiner
            color: _color, // Cor do contêiner
            child: Center(
              child: Text(
                'Clique aqui', // Texto exibido dentro do contêiner
                style: TextStyle(color: Colors.white), // Estilo do texto
              ),
            ),
          ),
        ),
      ),
    );
  }
}
