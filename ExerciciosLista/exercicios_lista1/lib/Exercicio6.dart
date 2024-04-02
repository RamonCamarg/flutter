import 'package:flutter/material.dart'; // Importa o pacote Flutter Material Design

void main() {
  runApp(MyApp()); // Inicializa o aplicativo Flutter
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          ResponsiveLayoutDemo(), // Define a tela inicial do aplicativo como ResponsiveLayoutDemo
    );
  }
}

class ResponsiveLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Layout Responsivo com MediaQuery'), // Define o título da AppBar
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Builder que permite acessar as restrições de layout
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width *
                  0.8, // Largura do contêiner responsivo
              padding: EdgeInsets.all(16.0), // Preenchimento do contêiner
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Nome:', // Rótulo para o campo de entrada do nome
                    style: TextStyle(fontSize: 18), // Estilo do texto
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.6, // Largura do campo de texto do nome
                    child: TextField(
                      decoration: InputDecoration(
                        hintText:
                            'Digite seu nome', // Dica para o campo de texto
                        border: OutlineInputBorder(), // Borda do campo de texto
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'E-mail:', // Rótulo para o campo de entrada do e-mail
                    style: TextStyle(fontSize: 18), // Estilo do texto
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.6, // Largura do campo de texto do e-mail
                    child: TextField(
                      decoration: InputDecoration(
                        hintText:
                            'Digite seu e-mail', // Dica para o campo de texto
                        border: OutlineInputBorder(), // Borda do campo de texto
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Mensagem:', // Rótulo para o campo de entrada da mensagem
                    style: TextStyle(fontSize: 18), // Estilo do texto
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.6, // Largura do campo de texto da mensagem
                    child: TextField(
                      maxLines:
                          5, // Número máximo de linhas para o campo de texto
                      decoration: InputDecoration(
                        hintText:
                            'Digite sua mensagem', // Dica para o campo de texto
                        border: OutlineInputBorder(), // Borda do campo de texto
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // Largura do botão enviar
                      child: ElevatedButton(
                        onPressed: () {
                          // Ação ao enviar o formulário (a ser implementada)
                        },
                        child: Text('Enviar'), // Texto do botão enviar
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
