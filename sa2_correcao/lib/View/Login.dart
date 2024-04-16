import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Controller/BancoDados.dart';
import '../Model/Usuario.dart';
import 'Cadastro.dart';
import 'ListaTarefas.dart';

class PaginaLogin extends StatefulWidget {
  const PaginaLogin({super.key});

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  bool _loading = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'E-mail'),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Digite seu Email';
                    } else if (!isValidEmail(value)) {
                      return 'Nao foi possivel acessar';
                    }
                    return null;
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]')),
                  ],
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _senhaController,
                  decoration: InputDecoration(labelText: 'Senha'),
                  obscureText: true,
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Digite sua senha';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                _loading
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: _login,
                        child: Text('Acessar'),
                      ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaginaCadastro()),
                    );
                  },
                  child: Text('Cadastre-se'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login() async {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text;
      String senha = _senhaController.text;

      setState(() {
        _loading = true;
      });

      BancoDadosCrud bancoDados = BancoDadosCrud();
      try {
        Usuario? usuario = await bancoDados.getUsuario(email, senha);
        if (usuario != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ToDoList(email:usuario.email),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Email ou senha invalidos'),
          ));
        }
      } catch (e) {
        print('Erro ao efetuar login: $e');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Erro ao efetuar o login. Tente novamente mais tarde.'),
        ));
      } finally {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
