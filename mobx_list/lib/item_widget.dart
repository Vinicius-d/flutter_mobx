import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Titulo'),
      leading: Checkbox(value: true, onChanged: (bool value) {}),
      trailing: IconButton(
          color: Colors.red, icon: Icon(Icons.remove_circle), onPressed: () {}),
    );
  }
}
