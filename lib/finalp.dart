import 'package:flutter/material.dart';
import 'initialp.dart';

class FinalPage extends StatefulWidget {
  
  final int pontuacao;
  final int totalPerguntas;
    const FinalPage(this.pontuacao, this.totalPerguntas, {super.key});
  @override

  createState() => _FinalPageState();
}

class _FinalPageState extends State <FinalPage> {
  int _pontuacao = 0;
  int _totalPerguntas = 0;
  @override

  void initState() {
    super.initState();
    _pontuacao = widget.pontuacao;
    _totalPerguntas = widget.totalPerguntas;
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tela de Resultado",
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ 
            const Text( 'Você completou o Quiz!',
              textAlign: TextAlign.center,
            ),
          const  SizedBox(height: 20),
            Text(
              "Pontuação: $_pontuacao de $_totalPerguntas",
              style: const TextStyle(
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: resetQuiz,
              child: const Text(       "Recomeçar",
              ),
              ),
          ],
        ),
    );
  }

  void resetQuiz() {
    setState(() {
      _totalPerguntas = 0;
      _pontuacao = 0;
      ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  const InitialPage()),
        ),
        child: const Text(
          "Recomeçar",
        ),
    );
    });
  }
}