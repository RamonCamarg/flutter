import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Login.dart';

class ToDoList extends StatefulWidget {
  String email;

  ToDoList({Key? key, required this.email}) : super(key: key);

  @override
  _ToDoListState createState() => _ToDoListState(email: email);
}

class _ToDoListState extends State<ToDoList> {
  String email;

  _ToDoListState({required this.email});
  List<String> tasks = []; // Lista de tarefas
  final TextEditingController _controller =
      TextEditingController(); // Controlador de texto para o campo de entrada de nova tarefa

  @override
  void initState() {
    super.initState();
    loadTasks(); // Carrega as tarefas ao iniciar a tela
  }

  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences
        .getInstance(); // Obtém as preferências compartilhadas
    setState(() {
      tasks = prefs.getStringList('${email}_tasks') ??
          []; // Carrega as tarefas armazenadas ou uma lista vazia se não houver tarefas
    });
  }

  Future<void> saveTasks() async {
    SharedPreferences prefs = await SharedPreferences
        .getInstance(); // Obtém as preferências compartilhadas
    await prefs.setStringList('${email}_tasks',
        tasks); // Salva a lista de tarefas nas preferências compartilhadas
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // Método para excluir uma tarefa
  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index); // Remove a tarefa da lista
      saveTasks(); // Salva as tarefas atualizadas
      showSnackbar(context, 'Tarefa excluída com sucesso');
    });
  }

  // Método para editar uma tarefa
  void editTask(int index, String newTask) {
    setState(() {
      tasks[index] = newTask; // Atualiza a tarefa na lista
      saveTasks(); // Salva as tarefas atualizadas
      showSnackbar(context, 'Tarefa editada com sucesso');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'), // Título da barra de aplicativos
      ),
      body: ListView.builder(
        itemCount: tasks.length, // Número de itens na lista de tarefas
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]), // Título do item da lista
            onLongPress: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Editar Tarefa'), // Título do diálogo de edição de tarefa
                    content: TextField(
                      controller: TextEditingController(text: tasks[index]), // Controlador de texto para o campo de entrada preenchido

                      onChanged: (value) {
                        tasks[index] = value; // Atualiza a tarefa na lista quando o texto é alterado
                      },
                      decoration: InputDecoration(
                        hintText: 'Digite a tarefa', // Dica no campo de entrada
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Fecha o diálogo de edição de tarefa
                        },
                        child: Text('Cancelar'), // Botão para cancelar a edição
                      ),
                      TextButton(
                        onPressed: () {
                          editTask(index, tasks[index]); // Edita a tarefa na lista
                          Navigator.of(context).pop(); // Fecha o diálogo de edição de tarefa
                        },
                        child: Text('Salvar'), // Botão para salvar a edição
                      ),
                    ],
                  );
                },
              );
            },
            trailing: IconButton(
              icon: Icon(Icons.delete), // Ícone para excluir a tarefa
              onPressed: () {
                deleteTask(index); // Exclui a tarefa ao pressionar o ícone
                showSnackbar(context, 'Tarefa excluida com sucesso');
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Nova Tarefa'), // Título do diálogo de nova tarefa
                content: TextField(
                  controller:
                      _controller, // Controlador de texto para o campo de entrada
                  decoration: InputDecoration(
                    hintText: 'Digite a tarefa', // Dica no campo de entrada
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        tasks.add(_controller.text); // Adiciona a nova tarefa à lista
                        saveTasks(); // Salva as tarefas atualizadas
                        _controller.clear(); // Limpa o campo de entrada
                        Navigator.of(context).pop(); // Fecha o diálogo
                      });
                    },
                    child: Text('Adicionar'), // Botão para adicionar a tarefa
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add), // Ícone do botão de adicionar
      ),
    );
  }
}
