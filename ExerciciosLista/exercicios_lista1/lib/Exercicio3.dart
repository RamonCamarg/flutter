import 'package:flutter/material.dart'; // Importa o pacote Flutter Material Design

void main() {
  runApp(MyApp()); // Inicializa o aplicativo Flutter
}

class MyApp extends StatelessWidget {
  // Lista de itens gerada com base em um número específico
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Página com ListView'), // Define o título da AppBar
        ),
        body: ListView.builder(
          // ListView.builder permite a construção de uma lista com base em um construtor de itens
          itemCount: items.length, // Número de itens na lista
          itemBuilder: (context, index) {
            return Card(
              // Um Card para cada item na lista
              child: ListTile(
                // ListTile é um widget que representa um item na lista
                title: Text(
                  items[index], // Texto do título do item
                  style: TextStyle(fontSize: 18), // Estilo do texto do título
                ),
                subtitle: Text(
                  'Descrição do item ${index + 1}', // Texto do subtítulo do item
                  style:
                      TextStyle(fontSize: 14), // Estilo do texto do subtítulo
                ),
                leading: CircleAvatar(
                  // Um CircleAvatar como elemento à esquerda do ListTile
                  backgroundColor: Colors.blue, // Cor de fundo do CircleAvatar
                  child: Icon(Icons.person,
                      color: Colors.white), // Ícone dentro do CircleAvatar
                ),
                onTap: () {
                  // Ação ao clicar no item (a ser implementada)
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
