import 'package:flutter/material.dart'; // Importa o pacote Flutter Material Design

void main() {
  runApp(ProductCardsApp()); // Inicializa o aplicativo Flutter
}

class ProductCardsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cards Produtos', // Define o título do aplicativo
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define a cor primária do tema
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductCardsScreen(), // Define a tela inicial do aplicativo
    );
  }
}

class ProductCardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Produtos'), // Define o título da barra de aplicativos
      ),
      body: Container(
        padding: EdgeInsets.all(16.0), // Define o preenchimento do conteúdo
        child: ListView(
          children: [
            ProductCard(
              imageUrl:
                  'https://via.placeholder.com/150', // URL da imagem do produto
              title: 'Produto 1', // Título do produto
              description: 'Descricao Produto 1', // Descrição do produto
            ),
            ProductCard(
              imageUrl: 'https://via.placeholder.com/150',
              title: 'Produto 2',
              description: 'Descricao Produto 2',
            ),
            // Adicione mais ProductCards conforme necessário
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl; // URL da imagem do produto
  final String title; // Título do produto
  final String description; // Descrição do produto

  ProductCard({
    required this.imageUrl, // Argumento obrigatório
    required this.title, // Argumento obrigatório
    required this.description, // Argumento obrigatório
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl, // Exibe a imagem do produto
            fit: BoxFit.cover,
            height: 150,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title, // Exibe o título do produto
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(description), // Exibe a descrição do produto
              ],
            ),
          ),
        ],
      ),
    );
  }
}
