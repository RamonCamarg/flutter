import 'package:app_animais/Model.dart';

class AnimalController {
  //atributos
  List<Animal> _listAnimal = [];

  //gets da lista
  List get listarAnimais => _listAnimal;

  //adicionar Animal 
  void adicionarAnimal(String especie, String urlFoto, String urlAudio){
    Animal novoAnimal = Animal(especie, urlFoto, urlAudio);
    _listAnimal.add(novoAnimal);
  }
}