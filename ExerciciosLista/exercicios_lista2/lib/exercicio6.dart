import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Deslizante',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Deslizante'),
      ),
      drawer: DrawerMenu(), // Adiciona o menu deslizante
      body: Center(
        child: Text('Conteúdo da Página Principal'),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer( // Widget Drawer que representa o menu deslizante
      child: ListView( // ListView para exibir os itens do menu
        padding: EdgeInsets.zero, // Padding zero para evitar espaço extra
        children: <Widget>[
          DrawerHeader( // Cabeçalho do Drawer
            decoration: BoxDecoration(
              color: Colors.blue, // Cor de fundo do cabeçalho
            ),
            child: Text(
              'Menu', // Texto exibido no cabeçalho
              style: TextStyle(
                color: Colors.white, // Cor do texto
                fontSize: 24, // Tamanho da fonte
              ),
            ),
          ),
          ListTile( // Item de menu para a página principal
            leading: Icon(Icons.home), // Ícone à esquerda do item
            title: Text('Página Principal'), // Texto do item
            onTap: () {
              Navigator.pop(context); // Fecha o drawer
              // Adicione aqui a navegação para a página principal, se necessário
            },
          ),
          ListTile( // Item de menu para configurações
            leading: Icon(Icons.settings), // Ícone à esquerda do item
            title: Text('Configurações'), // Texto do item
            onTap: () {
              Navigator.pop(context); // Fecha o drawer
              // Adicione aqui a navegação para a página de configurações, se necessário
            },
          ),
          ListTile( // Item de menu para a página "Sobre"
            leading: Icon(Icons.info), // Ícone à esquerda do item
            title: Text('Sobre'), // Texto do item
            onTap: () {
              Navigator.pop(context); // Fecha o drawer
              // Adicione aqui a navegação para a página "Sobre", se necessário
            },
          ),
        ],
      ),
    );
  }
}
