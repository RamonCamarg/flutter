import 'DataBaseController.dart'; // Importa o controlador do banco de dados
import 'Model.dart'; // Importa o modelo de contato

void main() {
  final db = DatabaseHelper(); // Instância do controlador do banco de dados

  // Exemplo de login simples
  print('Bem-vindo ao sistema de login.');

  // Aqui você pode implementar a lógica de login

  // Exemplo de utilização do banco de dados
  final contacts = [
    ContactModel(id: 1, name: 'João', email: 'joao@example.com', phone: '123456789', addressLine1: 'Rua A', senha: 'joao123'),
    ContactModel(id: 2, name: 'Maria', email: 'maria@example.com', phone: '987654321', addressLine1: 'Rua B', senha: 'maria321'),
  ];

  // Criação dos contatos no banco de dados
  for (var contact in contacts) {
    db.create(contact);
  }

  // Exemplo de consulta no banco de dados
  final allContacts = db.getContacts();
  allContacts.then((contacts) {
    print('Contatos no banco de dados:');
    for (var contact in contacts) {
      print('${contact.id}: ${contact.name}, ${contact.email}, ${contact.phone}, ${contact.addressLine1}');
    }
  });
}
