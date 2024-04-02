import 'DataBaseController.dart'; // Importa o controlador do banco de dados
import 'Model.dart'; // Importa o modelo de contato

void main() {
  final db = DatabaseHelper(); // Instância do controlador do banco de dados

  // Aqui você pode implementar a lógica de cadastro de usuários

  // Exemplo de utilização do banco de dados para cadastrar um novo contato
  final newContact = ContactModel(id: 3, name: 'Carlos', email: 'carlos@example.com', phone: '555555555', addressLine1: 'Rua C', senha: 'carlos123');
  db.create(newContact);

  // Exemplo de consulta no banco de dados
  final allContacts = db.getContacts();
  allContacts.then((contacts) {
    print('Contatos no banco de dados:');
    for (var contact in contacts) {
      print('${contact.id}: ${contact.name}, ${contact.email}, ${contact.phone}, ${contact.addressLine1}');
    }
  });
}
