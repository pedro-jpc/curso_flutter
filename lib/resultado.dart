import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao == 10) {
      return 'Caso gravíssimo!';
    } else if (pontuacao == 9) {
      return 'Caso grave!';
    } else if (pontuacao == 8) {
      return 'Caso moderado!';
    } else {
      return 'VIAGEM TRANQUILA!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        FloatingActionButton(
        
          onPressed: quandoReiniciarQuestionario,
          focusColor: Colors.blueGrey,
          child: const Text(
            'Voltar',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
