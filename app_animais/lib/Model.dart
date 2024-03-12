class Animal {
    //atributos
    String _especie;
    String _urlFoto;
    String _urlAudio;
    
    //metodos
    //construtor
    Animal(String especie, String urlFoto, String urlAudio){
      this._especie = especie;
      this._urlFoto = urlFoto;
      this._urlAudio= urlAudio;
    }

    //gets
    String get especie => _especie;
    String get urlFoto => _urlFoto;
    String get urlAudio => _urlAudio;

    //sets
    set especie (String novaEspecie){
      if(novaEspecie.length > 0){
        _especie = novaEspecie;
      }
    }
    set urlFoto (String novaUrlFoto){
      if (novaUrlFoto.length > 0) {
        _urlFoto = novaUrlFoto;
      }
    }
   set urlAudio (String novaUrlAudio){
      if (novaUrlAudio.length > 0) {
        _urlAudio = novaUrlAudio;
      }
    }
}