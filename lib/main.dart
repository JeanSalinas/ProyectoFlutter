import 'package:flutter/material.dart';
import 'Movie.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(40),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Jean Sebastian Gómez Salinas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Portero de Fútbol Sala',
                style: TextStyle(
                  color: Colors.grey[900],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color:Colors.red[700],
        ),
        Text('5,0'),
      ],
    ),
  );
  
  Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Video'),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Movie(),
              ));
          }
        ),
        _buildButtonColumn(color, Icons.call, 'LLAMADA'),
        //_buildButtonColumn(color, Icons.near_me, 'RUTA'),
        //_buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(25),
      child: Text(
        'Soy Jean Sebastian Gómez Salinas, actualmente estudio Ingeniería de Sistemas, '
          'estoy cursando octavo semestre, pero mas allá del estudio mi hobbie '
          'preferido es jugar fútbol, mi posición es ser arquero, llevo en esta '
          'posición 8 años, además entrené en una academía de fútbol a la edad de '
          'trece años, hasta los quince años, de allí en adelante me dedique a ser '
          'arquero de fútbol sala, y actualmente me encuentro llevando acabo este deporte.',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Biografía Deportiva',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[150]),
      home: Scaffold(
        appBar: AppBar(
            title: Text('Biografía Deportiva'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 0,
              height: 570,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video'),
      )
    );
  }
}