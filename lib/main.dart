import 'package:flutter/material.dart';

import 'contatos.dart';

List<Contatos> contatos = [
  Contatos(nome: 'Vinícius', email: 'vinicius@gmail.com'),
  Contatos(nome: 'Gabriel', email: 'gabriel@gmail.com'),
  Contatos(nome: 'William', email: 'william@gmail.com'),
  Contatos(nome: 'Jhamil', email: 'jhamil@gmail.com'),
    Contatos(nome: 'Hugo', email: 'hugo@gmail.com'),
    Contatos(nome: 'Enzo', email: 'enzo@gmail.com'),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      home: ListaContatos(),
    );
  }
}

class ListaContatos extends StatefulWidget {
  @override
  _ListaContatosState createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  List<Contatos> contato = [
    Contatos(nome: 'Vinícius', email: 'vinicius@gmail.com'),
    Contatos(nome: 'Gabriel', email: 'gabriel@gmail.com'),
    Contatos(nome: 'William', email: 'william@gmail.com'),
    Contatos(nome: 'Jhamil', email: 'jhamil@gmail.com'),
    Contatos(nome: 'Hugo', email: 'hugo@gmail.com'),
    Contatos(nome: 'Enzo', email: 'enzo@gmail.com'),
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Text('Lista de Contatos'),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: contato.length,
        itemBuilder: (context, index) {
          Contatos contato = contatos[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/564x/97/88/73/9788732dd6c9fd092c36528412bc049b.jpg'),
            ),
            title: Text(contato.nome),
            subtitle: Text(contato.email),
            
          );
        },
      ),
    );
  }
}


