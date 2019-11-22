import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Lista Basica';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Mapa'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Albun'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telèfono'),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Editar'),
            ),
            ListTile(
              leading: Icon(Icons.save),
              title: Text('Guardar'),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Eliminar"),
            ),
            FlatButton(
              child: Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
