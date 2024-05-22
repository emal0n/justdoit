import 'package:flutter/material.dart';
import 'finalp.dart';

class QuizPage extends StatefulWidget{
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _perguntaAtual = 0;
  int _pontuacao = 0;

  final List<Pergunta> _perguntas = [
    Pergunta(
      pergunta: 'Qual é a capital da França?',
      respostas: ['Paris', 'Roma', 'Londres', 'Berlim'],
      respostaCorreta: 'Paris',
    ),
    Pergunta(
      pergunta: 'Qual é o maior planeta do sistema solar?',
      respostas: ['Júpiter', 'Netuno', 'Saturno', 'Terra'],
      respostaCorreta: 'Júpiter',
    ),
    Pergunta(
      pergunta: 'Quem pintou a Mona Lisa?',
      respostas: ['Van Gogh', 'Michelangelo', 'Leonardo da Vinci', 'Picasso'],
      respostaCorreta: 'Leonardo da Vinci',
    ),
  ];

  void _responderPergunta(String resposta) {
    if (_perguntas[_perguntaAtual].respostaCorreta == resposta) {
      setState(() {
        _pontuacao++;
      });
    }

    if (_perguntaAtual < _perguntas.length - 1) {
      setState(() {
        _perguntaAtual++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FinalPage(_pontuacao, _perguntas.length)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _perguntas[_perguntaAtual].pergunta,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ...(_perguntas[_perguntaAtual].respostas).map((resposta) {
              return ElevatedButton(
                onPressed: () {
                  _responderPergunta(resposta);
                },
                child: Text(resposta),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class Pergunta {
  final String pergunta;
  final List<String> respostas;
  final String respostaCorreta;

  Pergunta({
    required this.pergunta,
    required this.respostas,
    required this.respostaCorreta,
  });
}