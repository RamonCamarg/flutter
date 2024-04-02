import 'package:flutter/material.dart';
import 'DataBaseController.dart'; // Importa o controlador do banco de dados
import 'Model.dart'; // Importa o modelo de contato

class CadastroView extends StatelessWidget {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  final DatabaseHelper _db = DatabaseHelper(); // Instância do controlador do banco de dados

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                controller: _senhaController,
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Cria um novo contato com os dados do formulário
                  final novoContato = ContactModel(
                    id: DateTime.now().millisecondsSinceEpoch, // Gera um ID único baseado no timestamp
                    name: _nomeController.text,
                    email: _emailController.text,
                    phone: '', // Você pode adicionar campos adicionais conforme necessário
                    addressLine1: '', // Você pode adicionar campos adicionais conforme necessário
                    senha: '',
                  );

                  // Insere o novo contato no banco de dados
                  _db.create(novoContato).then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Cadastro realizado com sucesso!')),
                    );
                    // Limpa os campos do formulário após o cadastro
                    _nomeController.clear();
                    _emailController.clear();
                    _senhaController.clear();
                  }).catchError((error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Erro ao realizar o cadastro: $error')),
                    );
                  });
                },
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
