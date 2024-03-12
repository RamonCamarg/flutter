import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Lateral (Drawer)'),
        // Adicionando o botão de menu no AppBar
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      // Adicionando o Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Opções do Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Opção 1'),
              onTap: () {
                // Ação ao clicar na opção 1
              },
            ),
            ListTile(
              title: Text('Opção 2'),
              onTap: () {
                // Ação ao clicar na opção 2
              },
            ),
            ListTile(
              title: Text('Opção 3'),
              onTap: () {
                // Ação ao clicar na opção 3
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Conteúdo da Página'),
      ),
    );
  }
}
