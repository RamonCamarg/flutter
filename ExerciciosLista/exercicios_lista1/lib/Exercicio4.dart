import 'package:flutter/material.dart'; // Importa o pacote Flutter Material Design

void main() {
  runApp(MyApp()); // Inicializa o aplicativo Flutter
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(), // Define a tela inicial do aplicativo como MyHomePage
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() =>
      _MyHomePageState(); // Cria o estado para MyHomePage
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Índice selecionado no BottomNavigationBar

  // Lista de widgets para as diferentes seções
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Seção 1'),
    Text('Seção 2'),
    Text('Seção 3'),
  ];

  // Função para lidar com o evento de seleção de item no BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Atualiza o índice selecionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Barra de Navegação Personalizada'), // Define o título da AppBar
      ),
      body: Center(
        child: _widgetOptions.elementAt(
            _selectedIndex), // Exibe o widget correspondente ao índice selecionado
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          // Define os itens do BottomNavigationBar
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Ícone para a primeira seção
            label: 'Seção 1', // Rótulo para a primeira seção
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // Ícone para a segunda seção
            label: 'Seção 2', // Rótulo para a segunda seção
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Ícone para a terceira seção
            label: 'Seção 3', // Rótulo para a terceira seção
          ),
        ],
        currentIndex: _selectedIndex, // Índice do item atualmente selecionado
        selectedItemColor: Colors.blue, // Cor do item selecionado
        onTap: _onItemTapped, // Função chamada quando um item é tocado
      ),
    );
  }
}
