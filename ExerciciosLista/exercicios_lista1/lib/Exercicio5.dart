import 'package:flutter/material.dart'; // Importa o pacote Flutter Material Design

void main() {
  runApp(MyApp()); // Inicializa o aplicativo Flutter
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          ContactForm(), // Define a tela inicial do aplicativo como ContactForm
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(); // Chave global para o formulário
  TextEditingController _nameController =
      TextEditingController(); // Controlador para o campo de nome
  TextEditingController _emailController =
      TextEditingController(); // Controlador para o campo de e-mail
  TextEditingController _messageController =
      TextEditingController(); // Controlador para o campo de mensagem

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Contato'), // Define o título da AppBar
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Preenchimento do corpo do aplicativo
        child: Form(
          key: _formKey, // Define a chave global para o formulário
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller:
                    _nameController, // Define o controlador para o campo de nome
                decoration: InputDecoration(
                    labelText: 'Nome'), // Define a aparência do campo de nome
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Insira seu nome.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller:
                    _emailController, // Define o controlador para o campo de e-mail
                decoration: InputDecoration(
                    labelText:
                        'E-mail'), // Define a aparência do campo de e-mail
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Insira seu e-mail.';
                  }
                  // Pode adicionar validações de e-mail aqui
                  return null;
                },
              ),
              TextFormField(
                controller:
                    _messageController, // Define o controlador para o campo de mensagem
                decoration: InputDecoration(
                    labelText:
                        'Mensagem'), // Define a aparência do campo de mensagem
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Insira uma mensagem.';
                  }
                  return null;
                },
                maxLines:
                    5, // Define o número máximo de linhas para o campo de mensagem
              ),
              SizedBox(height: 20), // Espaçamento entre os campos e o botão
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Processar os dados do formulário aqui
                      String name = _nameController
                          .text; // Obtém o texto do campo de nome
                      String email = _emailController
                          .text; // Obtém o texto do campo de e-mail
                      String message = _messageController
                          .text; // Obtém o texto do campo de mensagem

                      // Exemplo: exibindo os dados do formulário em um AlertDialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                                'Dados do Formulário'), // Título do AlertDialog
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                    'Nome: $name'), // Exibe o nome inserido no formulário
                                Text(
                                    'E-mail: $email'), // Exibe o e-mail inserido no formulário
                                Text(
                                    'Mensagem: $message'), // Exibe a mensagem inserida no formulário
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pop(); // Fecha o AlertDialog
                                },
                                child: Text(
                                    'Fechar'), // Texto do botão para fechar o AlertDialog
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text('Enviar'), // Texto do botão Enviar
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Descarta os controladores quando o widget é removido da árvore
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }
}
