import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 33, 131, 243),
          foregroundColor: Colors.white,
        ),
        onPressed: quandoSelecionado,
        onHover: (value) => const Color.fromARGB(255, 7, 230, 255),
        onFocusChange: (value) => Color.fromARGB,
        child: Text(texto),
      ),
    );
  }
}
