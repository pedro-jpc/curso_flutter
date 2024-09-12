import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'O que ocorreu com sua Bagagem?',
      'respostas': [
        {'texto': 'Bagagem danificada', 'pontuacao': 9},
        {'texto': 'Bagagem perdida', 'pontuacao': 10},
        {'texto': 'Objeto roubado', 'pontuacao': 10},
        {'texto': 'Objeto danificado', 'pontuacao': 8},
        {'texto': 'Nenhuma ocorrência', 'pontuacao': 7},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('APP BAGAER'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(height: 20), // Espaço entre o AppBar e a imagem
            Image.asset(
              'assets/logo.jpeg', // Caminho da imagem
              width: 150, // Defina a largura desejada
              height: 150, // Defina a altura desejada
              fit: BoxFit.cover, // Ajuste a imagem ao espaço disponível
            ),

            temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    perguntaSelecionada: _perguntaSelecionada,
                    quandoResponder: _responder,
                  )
                : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
            Container(
                child: Column(children: <Widget>[
              const SizedBox(height: 10), // Espaço entre o AppBar e a imagem
              Image.asset(
                'assets/wizzard_1.jpeg', // Caminho da imagem
                width: 200, // Defina a largura desejada
                height: 200, // Defina a altura desejada
                //fit: BoxFit.cover, // Ajuste a imagem ao espaço disponível
              ),
            ])),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
