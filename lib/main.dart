import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final perguntas = [
    'Qual é a sua cor preferida?',
    'Qual é o seu animal favorito?'
  ];

  void responder() {
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: () => responder(),
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () => responder(),
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () => responder(),
            ),
          ],
        ),
      ),
    );
  }

}