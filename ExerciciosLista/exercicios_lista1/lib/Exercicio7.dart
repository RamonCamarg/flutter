import 'package:flutter/material.dart'; // Importa o pacote Flutter Material Design

void main() {
  runApp(MyApp()); // Inicializa o aplicativo Flutter
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), // Define a tela inicial do aplicativo como HomePage
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Lateral'),
        // Adicionando o botão de menu no AppBar
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu), // Ícone do botão de menu
              onPressed: () {
                Scaffold.of(context)
                    .openDrawer(); // Abre o Drawer ao clicar no botão de menu
              },
            );
          },
        ),
      ),
      // Adicionando o Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // Padding zero para evitar espaço extra
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue, // Cor de fundo do cabeçalho do Drawer
              ),
              child: Text(
                'Opções do Menu', // Título do cabeçalho do Drawer
                style: TextStyle(
                  color: Colors.white, // Cor do texto do cabeçalho do Drawer
                  fontSize:
                      24, // Tamanho da fonte do texto do cabeçalho do Drawer
                ),
              ),
            ),
            ListTile(
              title: Text('Opção 1'), // Título da primeira opção do Drawer
              onTap: () {
                // Ação ao clicar na opção 1 (a ser implementada)
              },
            ),
            ListTile(
              title: Text('Opção 2'), // Título da segunda opção do Drawer
              onTap: () {
                // Ação ao clicar na opção 2 (a ser implementada)
              },
            ),
            ListTile(
              title: Text('Opção 3'), // Título da terceira opção do Drawer
              onTap: () {
                // Ação ao clicar na opção 3 (a ser implementada)
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Conteúdo da Página'), // Conteúdo central da página
      ),
    );
  }
}
