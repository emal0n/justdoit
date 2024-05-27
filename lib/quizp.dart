import 'package:flutter/material.dart';
import 'finalp.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _perguntaAtual = 0;
  int _pontuacao = 0;

  final List<Pergunta> _perguntas = [
    Pergunta(
      pergunta: 'ONDE A NIKE FOI FUNDADA?',
      respostas: ['ESTADOS UNIDOS', 'PORTUGAL', 'BRAZIL', 'CHINA'],
      respostaCorreta: 'ESTADOS UNIDOS',
    ),
    Pergunta(
      pergunta: 'EM QUE DIA A NIKE FOI FUNDADA?',
      respostas: ['25', '10', '27', '18'],
      respostaCorreta: '25',
    ),
    Pergunta(
      pergunta: 'EM QUAL ANO A NIKE FOI FUNDADA?',
      respostas: ['2000', '1964', '1850', '2024'],
      respostaCorreta: '1964',
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
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/nk2.gif',
                height: 240,
              ),
            ),
            const SizedBox(height: 48),
            Text(
              _perguntas[_perguntaAtual].pergunta,
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.redAccent,
                  fontSize: 15),
            ),
            const SizedBox(height: 25),
            ...(_perguntas[_perguntaAtual].respostas).map((resposta) {
              return ElevatedButton(
                onPressed: () {
                  _responderPergunta(resposta);
                },
                child: Text(resposta,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Colors.black)),
              );
            }),
            const SizedBox(height: 25),
            const Text(
              'JUST DO IT',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.redAccent,
                fontSize: 17,
              ),
            ),
            Text(
              "$_perguntaAtual - 3",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 15,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
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
