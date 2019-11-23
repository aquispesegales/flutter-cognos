import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenidos',
      home:Scaffold(
        appBar:AppBar(
          title: Text('Bienvenidos a  flutter'),

        ),
        body: 
        //Copiar
        
        /*Center(
          child: Text('Hola Mundo MARCELO'),
        )*/

        /*Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color:Colors.amber[600],
            width: 48.0,
            height: 48.0,
          ),
        )*/

        /*Container(
          constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0
          ),
          padding: const EdgeInsets.all(8.0),
          color: Colors.blue[600],
          alignment: Alignment.center,
          child: Text('Hola Munto',
            style: Theme.of(context)
            .textTheme
            .display1
            .copyWith(color: Colors.white)),
            transform: Matrix4.rotationZ(0.1),
          )*/

        /*Row(
            children: <Widget>[
              Expanded(
                child: Text('Texto alineado a la isquierda',
                textAlign: TextAlign.center)
              ),
              Expanded(
                child: Text('Texto al medio', textAlign:TextAlign.center)
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: const FlutterLogo(),
                ),
              )
            ],
          )*/

        /*Row(
            children: <Widget>[
              const FlutterLogo(),
              const Expanded(
                child: Text('Flutter\'s Desde el corazón de la comunidad FlutterES, nace un nuevo concepto de academia online para ayudar a formar profesionales en nuestro SDK favorito'),
              ),
              const Icon(Icons.sentiment_very_satisfied),
              const Expanded(
                child: Text('rae tu aplicación a la vida en cuestión de milisegundos con Hot R eload. Utilice un completo conjunto de widgets totalmente personalizables para crear inte rfaces nativas en cuestión de minutos.'),
              )
            ],
          )*/

          /*Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Desarrollo rápido'),
              Text('Estado previo se combina con nu nuevo código'),
              Text('Cambio del código reciente se incluye pero el estado del apk se escluye'),
              Text('Cambio reciente de la UI es exlcuido'),
              Text('La funcionalidad hot reload de flutter te ayuda a rapido y facil ente experimentar'),
              Text('ejecuta la app desde un editor flutter soportDO')
            ],
          )*/

          /*const Image(
            image: NetworkImage('https://miro.medium.com/max/3200/1*73IgUxPfyXUKZAaIXgutrw.png'),
          )*/

          /*const Text.rich(
            TextSpan(
              text:'Hola',
              children: <TextSpan>[
                TextSpan(text: 'Saludos',style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(text: 'FLutter', style: TextStyle(fontWeight: FontWeight.bold))

              ]
            )
          )*/

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              
            ]
          )

        //COPIAR HASTA AAQUI
      )
    );
  }
}
