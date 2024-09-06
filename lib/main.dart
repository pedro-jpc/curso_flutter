import 'package:flutter/material.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});


  void responderA() {
    print("A");
  }
  void responderB() {
    print("B");
  }
  void responderC() {
    print("C");
  }
  void responderD() {
    print("D");
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita',
      'Qual é sua música favortia',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(onPressed: () => responderA, child: Text('A')),
            ElevatedButton(onPressed: () => responderB, child: Text('B')),
            ElevatedButton(onPressed: () => responderC, child: Text('C')),
            ElevatedButton(onPressed: () => responderD, child: Text('D')),
          ],
        ),
      ),
    );
  }
}
