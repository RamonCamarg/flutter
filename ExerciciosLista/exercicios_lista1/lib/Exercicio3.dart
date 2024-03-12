import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Página com ListView'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  items[index],
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'Descrição do item ${index + 1}',
                  style: TextStyle(fontSize: 14),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                onTap: () {
                  // Ação ao clicar no item
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
