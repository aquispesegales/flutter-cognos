import 'package:flutter/material.dart';
import 'dart:math';

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

    /*Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Image.asset('assets/cereza.png'),
              ),
              Expanded(
                child: Image.asset('assets/frutilla.png'),
              ),
              Expanded(
                child: Image.asset('assets/pinia.png'),
              ),
            ],
          ),
        ),*/
  }
}

class AleatorioWidget extends StatefulWidget {
  @override
  State<AleatorioWidget> createState() {
    return new AleatorioWidgetState();
  }
}

class AleatorioWidgetState extends State<AleatorioWidget> {
  var list = [
    'assets/cereza.png',
    'assets/frambuesa.png',
    'assets/frutilla.png',
    'assets/manzana.png',
    'assets/naranja.png',
    'assets/pinia.png',
    'assets/sandia.png',
    'assets/uva.png'
  ];

  String imagenuno = '';
  String imagendos = '';
  String imagentres = '';

  String texto = "JUGANDO";
  int frutauno = 1;
  int frutados = 1;
  int frutatres = 1;
  void generarGanador() {
    setState(() {
      var rnd = new Random();
      frutauno = rnd.nextInt(7) + 0;
      frutados = rnd.nextInt(7) + 0;
      frutatres = rnd.nextInt(7) + 0;
      if (frutauno == frutados && frutados == frutatres) {
        texto = "GANADOR";
        imagenuno = list[frutauno];
        imagendos = list[frutados];
        imagentres = list[frutatres];
      } else {
        texto = "SIGE JUGANDO";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Row(
            Expanded(
            child: Image.asset(imagenuno),
          ),
          Expanded(
            child: Image.asset(imagendos),
          ),
          Expanded(
            child: Image.asset(imagentres),
          ),
          )
        ]     ,
        RaisedButton(
        child: Text('Generar Ganador'),
        onPressed: () {
            generarGanador();
          },
        ), 
         
        

        


      ),
    );
  }
}
