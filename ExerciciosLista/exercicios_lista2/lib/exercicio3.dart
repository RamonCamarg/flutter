import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barra de Navegação',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Índice da tela selecionada

  // Lista de telas
  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  // Função para mudar de tela ao selecionar um item da barra de navegação
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Navegação'),
      ),
      body: _screens[_selectedIndex], // Tela atual
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tela 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tela 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tela 3',
          ),
        ],
        currentIndex: _selectedIndex, // Índice do item selecionado
        onTap: _onItemTapped, // Função chamada ao selecionar um item
      ),
    );
  }
}

// Telas de exemplo
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tela 1'),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tela 2'),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tela 3'),
    );
  }
}
