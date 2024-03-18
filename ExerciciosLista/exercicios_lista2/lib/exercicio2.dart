import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listagem Dinâmica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listagem Dinâmica'),
        ),
        body: ListaItens(),
      ),
    );
  }
}

class ListaItens extends StatelessWidget {
  // Lista de informações fictícias
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length, // Número total de itens na lista
      itemBuilder: (BuildContext context, int index) {
        // Função de construção de cada item da lista
        return Card(
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0), // Margem do Card
          child: ListTile(
            title: Text(items[index]), // Título do item
            subtitle: Text('Descrição do Item ${index + 1}'), // Descrição fictícia do item
            leading: CircleAvatar( // Widget de avatar circular
              child: Text('${index + 1}'), // Número do item dentro do avatar
            ),
            onTap: () {
              // Ação ao clicar no item (opcional)
              print('Clicou no item ${items[index]}');
            },
          ),
        );
      },
    );
  }
}
