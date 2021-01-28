import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;

  Resultado(this.pontuacaoTotal);

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
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
