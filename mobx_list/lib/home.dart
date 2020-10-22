import 'package:flutter/material.dart';
import 'package:mobx_list/item_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _dilog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Adicionar item'),
            content: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Novo item'),
            ),
            actions: [
              FlatButton(onPressed: () {}, child: Text('salvar')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lista mobx'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return ItemWidget();
          }),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: _dilog),
    );
  }
}
