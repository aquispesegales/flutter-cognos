import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenidos a Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Bienvenidos a Flutter'),
          ),
          body:
              /*Center(
          child:Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 48.0,
            height: 48.0,
          )
        ),*/
              /* Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            color:Colors.blue[50],
            child: Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size:60
              ),
            ),
          ),
        )*/
              /*SizedBox(
                  width: 200.0,
                  height: 300.0,
                  child: const Card(child: Text('Hello Word')))),*/

        /*Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color:Colors.red
              ),
              Container(
                width: 90,
                height: 90,
                color: Colors.green,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue
              )
            ],
          )
        )*/

        /*GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Desde el orazon de la comundD FLUTTER '),
              color : Colors.teal[100]
            ),
            Container(
              padding: const  EdgeInsets.all(8),
              child: const Text(
                'FLutter es el kit de herramineta de UI de google que se aplicra en hermosas apliaciones nativamente para el mopvl web y escriptior de una baasw de codigo'
              ),
              color:Colors.teal[200]
            ),
             Container(
              padding: const  EdgeInsets.all(8),
              child: const Text(
                'FLutter es el kit de herramineta de UI de google que se aplicra en hermosas apliaciones nativamente para el mopvl web y escriptior de una baasw de codigo'
              ),
              color:Colors.teal[300]
            ),           Container(
              padding: const  EdgeInsets.all(8),
              child: const Text(
                'FLutter es el kit de herramineta de UI de google que se aplicra en hermosas apliaciones nativamente para el mopvl web y escriptior de una baasw de codigo'
              ),
              color:Colors.teal[400]
            ),           Container(
              padding: const  EdgeInsets.all(8),
              child: const Text(
                'FLutter es el kit de herramineta de UI de google que se aplicra en hermosas apliaciones nativamente para el mopvl web y escriptior de una baasw de codigo'
              ),
              color:Colors.teal[500]
            ),
          ],
        )*/


        /*Padding(
          padding: EdgeInsets.all(10.0),
          child: Table(children: [
            TableRow(children: [
              Text("items 1"),
              Text("Items 2"),
              Text("item 3")
            ]),
            TableRow(children: [
              Text("items 4"),
              Text("Items 5"),
              Text("item 6")
            ])
          ]),
          
        )*/

        /*Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                backgroundColor:Colors.blue.shade900, child: Text("ND"),
              ),
              label: Text('Node JS'),
            ),
                      Chip(
              avatar: CircleAvatar(
                backgroundColor:Colors.blue.shade900, child: Text("ND"),
              ),
              label: Text('Angular'),
            ),
                      Chip(
              avatar: CircleAvatar(
                backgroundColor:Colors.blue.shade900, child: Text("ND"),
              ),
              label: Text('Reac JS'),
            ),
                      Chip(
              avatar: CircleAvatar(
                backgroundColor:Colors.blue.shade900, child: Text("ND"),
              ),
              label: Text('Nuex'),
            )
          ],
        )*/

       /* Center(
          child: Column(
            children: <Widget>[
              Container(
                color:Colors.blue,
                height: 100,
                width: 100,
              ),
              Container(
                color:Colors.amber,
                width: 100,
              ),
              Container(
                color:Colors.blue,
                height: 100,
                width: 100,
              )
            ],
          ),
        )*/
Center(
  child: Row(
    children: <Widget>[
      Expanded(
        flex: 2,
        child:  Container(
          color: Colors.amber,
          height: 100,
        ),
      ),
      Container(
          color: Colors.blue,
          height: 100,
          width: 50,
      ),
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.amber,
          height: 100,
        ),
      )
    ],
  ),
)

      )
    );
  }
}
