import 'package:flutter/material.dart';
import 'DataBaseController.dart'; // Importa o controlador do banco de dados
import 'Model.dart'; // Importa o modelo de contato

class LoginView extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  final DatabaseHelper _db = DatabaseHelper(); // Instância do controlador do banco de dados

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                onPressed: () async {
                  // Verifica se o usuário está cadastrado
                  List<ContactModel> contatos = await _db.getContacts();
                  ContactModel? usuario = contatos.firstWhere(
                    (contato) => contato.email == _emailController.text && contato.senha == _senhaController.text,
                     
                  );

                  if (usuario != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Usuário autenticado!')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Usuário não cadastrado!')),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
