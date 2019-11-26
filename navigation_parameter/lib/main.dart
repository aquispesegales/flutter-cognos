import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == PasarArgumentos.routeName) {
          final PantallaArgumentos args = settings.arguments;

          return MaterialPageRoute(
            builder: (context) {
              return PasarArgumentos(
                titulo: args.titulo,
                mensaje: args.mensaje,
              );
            },
          );
        }
      },
      title: 'Navegación con argumentos',
      home: InicioPantalla(),
    );
  }
}

class InicioPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("extraemos argumentos"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ObtenerArgumentos(),
                    settings: RouteSettings(
                      arguments: PantallaArgumentos(
                        'titulo de argumento 1',
                        'Mensaje del argumento 1',
                      ),
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Navegación aceptando argumentos"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PasarArgumentos.routeName,
                  arguments: PantallaArgumentos(
                    'Titulo de aceptacion 2',
                    'Mensaje de aceptacion 2',
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PasarArgumentos extends StatelessWidget {
  static const routeName = '/passArguments';

  final String titulo;
  final String mensaje;

  const PasarArgumentos({
    Key key,
    @required this.titulo,
    @required this.mensaje,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Center(
        child: Text(mensaje),
      ),
    );
  }
}

class ObtenerArgumentos extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast     // them as ScreenArguments.     
    final PantallaArgumentos args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.titulo),
      ),
      body: Center(
        child: Text(args.mensaje),
      ),
    );
  }
}

class PantallaArgumentos {
  final String titulo;
  final String mensaje;

  PantallaArgumentos(this.titulo, this.mensaje);
}
