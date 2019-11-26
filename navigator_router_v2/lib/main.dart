import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Laboratorio de navegación',
    initialRoute: '/',
    routes: {
      '/': (context) => PrimeraPantalla(),
      '/segundo': (context) => SegundaPantalla(),
      '/tercera': (context) => TerceraPantalla(),
    },
  ));
}

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Ir a segunda pantalla'),
                onPressed: () {
                  Navigator.pushNamed(context, '/segundo');
                },
              ),
              RaisedButton(
                child: Text('Ir a tercera pantalla'),
                onPressed: () {
                  Navigator.pushNamed(context, '/tercera');
                },
              ),
            ]),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/tercera');
          },
          child: Text('Volver a la primera pantalla'),
        ),
      ),
    );
  }
}

class TerceraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("soy tercera pantalla jajajajaj"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('Volver a la primera pantalla'),
        ),
      ),
    );
  }
}
