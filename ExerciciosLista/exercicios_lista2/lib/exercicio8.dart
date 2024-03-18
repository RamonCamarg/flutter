import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Integração de Imagens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageExample(),
    );
  }
}

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Imagens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Exibe uma imagem de uma URL externa
            Image.network(
              'https://imgs.search.brave.com/LFZuPz9QG9Sd1fMhYHcHz852YFJlVK-gYJpRUgp2aJ8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zMS5z/dGF0aWMuYnJhc2ls/ZXNjb2xhLnVvbC5j/b20uYnIvYmUvY29u/dGV1ZG8vaW1hZ2Vz/L3VtYS1kYXMtY29u/Y2VwY29lcy1hcnRp/c3RpY2FzLXBvc3Np/dmVsbWVudGUtbWFp/cy1wcm94aW1hcy11/bS1idXJhY28tbmVn/cm8tcmVhbC1mb2kt/YXByZXNlbnRhZGEt/bm8tZmlsbWUtaW50/ZXJlc3RlbGFyLWNo/cmlzdG9waGVyLW5v/bGFuLTVhY2I3ODE3/YWEzZTUuanBn',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20), // Espaçamento entre as imagens
            // Exibe uma imagem de recursos locais
            Image.asset(
              'assets/flutter/logo.png',
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
