class ContactModel {
  int id;
  String name;
  String email;
  String phone;
  String addressLine1;
  String senha;

  ContactModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.addressLine1,
    required this.senha,
  });
  // Método para converter um contato para um mapa (para salvar no banco de dados)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'addressLine1': addressLine1,
      'senha': senha,
    };
  }

  // Método de fábrica para criar um objeto ContactModel a partir de um mapa (para ler do banco de dados)
  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      addressLine1: map['addressLine1'],
      senha: map['senha'],
    );
  }
}