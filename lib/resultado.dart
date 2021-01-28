import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;
  final void Function() reinicarFormulario;

  Resultado(this.pontuacaoTotal, this.reinicarFormulario);

  String get fraseResultado {
    if (pontuacaoTotal < 8) {
      return 'Parabéns!';
    } else if (pontuacaoTotal < 12) {
      return 'Você é muito bom!';
    } else if (pontuacaoTotal < 16) {
      return 'Impressionante!';
    } else {
      return "Nível Jedi!";
    }
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text('Reiniciar'),
            onPressed: reinicarFormulario,
          ),
        ),
      ],
    );
  }
}
