import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile();
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: 55),
    );
  }
}
