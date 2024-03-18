import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabbedPage(),
    );
  }
}

class MyTabbedPage extends StatefulWidget {
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3, vsync: this); // Define o controlador de tab com 3 abas
  }

  @override
  void dispose() {
    _tabController
        .dispose(); // Libera os recursos do controlador de tab ao destruir o widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
          // Adiciona a TabBar abaixo da AppBar
          controller: _tabController, // Define o controlador de tab
          tabs: [
            Tab(text: 'Aba 1'), // Texto para a primeira aba
            Tab(text: 'Aba 2'), // Texto para a segunda aba
            Tab(text: 'Aba 3'), // Texto para a terceira aba
          ],
        ),
      ),
      body: TabBarView(
        // Exibe o conteúdo da aba selecionada
        controller: _tabController, // Define o controlador de tab
        children: [
          // Conteúdo exclusivo para a primeira aba
          Center(
            child: Text('Conteúdo da Aba 1'),
          ),
          // Conteúdo exclusivo para a segunda aba
          Center(
            child: Text('Conteúdo da Aba 2'),
          ),
          // Conteúdo exclusivo para a terceira aba
          Center(
            child: Text('Conteúdo da Aba 3'),
          ),
        ],
      ),
    );
  }
}
