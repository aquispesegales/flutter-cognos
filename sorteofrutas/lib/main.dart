import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bienvenido a Flutter',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Juego de frutas'),
            ),
            body: Center(child: AleatorioWidget())));
  }
}

class AleatorioWidget extends StatefulWidget {
  @override
  State<AleatorioWidget> createState() {
    return new AleatorioWidgetState();
  }
}

class AleatorioWidgetState extends State<AleatorioWidget> {
  var frutas = [
    'assets/cereza.png',
    'assets/frambuesa.png',
    'assets/frutilla.png',
    'assets/manzana.png',
    'assets/naranja.png',
    'assets/pinia.png',
    'assets/sandia.png',
    'assets/uva.png'
  ];

  int index_1 = 0;
  int index_2 = 3;
  int index_3 = 4;
  int numero = 1;
  String mensaje = 'Juega';

  void generarGanador() {
    setState(() {
      index_1 = generarAleatorio();
      index_2 = generarAleatorio();
      index_3 = generarAleatorio();
      numero++;
      if (index_1 == index_2 && index_2 == index_3) {
        mensaje = 'Ganador !!!';
        numero = 1;
      } else {
        mensaje = 'Juega';
      }
    });
  }

  int generarAleatorio() {
    var rnd = new Random();
    return rnd.nextInt(7) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(children: <Widget>[
              Text('Nro de Intentos $numero ',
                  style: new TextStyle(fontSize: 20.0)),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(frutas[index_1], height: 100, width: 100),
                  Image.asset(frutas[index_2], height: 100, width: 100),
                  Image.asset(frutas[index_3], height: 100, width: 100),
                ],
              ),
              IconButton(
                icon: Icon(Icons.autorenew),
                iconSize: 50.0,
                color: Colors.blueAccent,
                onPressed: () {
                  generarGanador();
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Text(
                mensaje,
                style: new TextStyle(fontSize: 20.0),
              )
            ])
          ]),
    );
  }
}
