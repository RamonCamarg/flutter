import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário de Cadastro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CadastroForm(),
    );
  }
}

class CadastroForm extends StatefulWidget {
  @override
  _CadastroFormState createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  // Controladores para os campos de texto
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  // Função para submeter o formulário
  void _submitForm() {
    // Obtendo os valores dos campos de texto
    String nome = _nomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;

    // Aqui você pode adicionar a lógica para enviar os dados para algum lugar,
    // como um servidor ou um sistema de autenticação.

    // Exemplo de impressão dos dados (pode ser substituído pela lógica real)
    print('Nome: $nome');
    print('E-mail: $email');
    print('Senha: $senha');

    // Limpa os campos após o envio do formulário
    _nomeController.clear();
    _emailController.clear();
    _senhaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Cadastro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Campo de texto para o nome
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            SizedBox(height: 20.0), // Espaçamento entre os campos
            // Campo de texto para o e-mail
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            SizedBox(height: 20.0), // Espaçamento entre os campos
            // Campo de texto para a senha
            TextField(
              controller: _senhaController,
              obscureText: true, // Oculta o texto da senha
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),
            SizedBox(height: 20.0), // Espaçamento entre os campos
            // Botão para submeter o formulário
            ElevatedButton(
              onPressed: _submitForm, // Chama a função para submeter o formulário
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
