import 'package:flutter/material.dart';
import 'package:justdoit/initialp.dart';

class FinalPage extends StatefulWidget {
  final int pontuacao;
  final int totalPerguntas;

  FinalPage(this.pontuacao, this.totalPerguntas);

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
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
        title: Text(
          "Tela de Resultado",
          style: TextStyle(
              fontFamily: 'fontenova',
              fontSize: 27,
              color: Color.fromARGB(255, 226, 211, 74)),
        ),
        backgroundColor: Color.fromARGB(255, 28, 47, 109),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color.fromARGB(255, 28, 47, 109),
              Color.fromARGB(255, 79, 119, 165),
              Color.fromARGB(255, 123, 152, 185),
              Color.fromARGB(255, 241, 241, 241),
              Color.fromARGB(255, 190, 190, 190),
              Color.fromARGB(255, 234, 240, 161),
              Color.fromARGB(255, 196, 186, 104),
              Color.fromARGB(255, 145, 161, 73),
              Color.fromARGB(255, 255, 198, 12),
              Color.fromARGB(255, 241, 241, 241),
              Color.fromARGB(255, 123, 152, 185),
              Color.fromARGB(255, 79, 119, 165),
              Color.fromARGB(255, 28, 47, 109),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Você completou o Quiz!',
              style: TextStyle(
                  fontFamily: 'fontenova',
                  fontSize: 25,
                  color: Color.fromARGB(255, 28, 47, 109)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "Pontuação: $_pontuacao de $_totalPerguntas",
              style: TextStyle(
                fontFamily: 'fontenova',
                fontSize: 25,
                color: Color.fromARGB(255, 28, 47, 109),
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: resetQuiz,
              child: Text(
                "Recomeçar",
                style: TextStyle(
                    fontFamily: 'fontenova',
                    fontSize: 25,
                    color: Color.fromARGB(255, 226, 211, 74)),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 28, 47, 109),
                ),
              ),
            ),
          ],
        ),
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
          MaterialPageRoute(builder: (context) => InitialPage()),
        ),
        child: Text(
          "Recomeçar",
        ),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 28, 47, 109))),
      );
    });
  }
}