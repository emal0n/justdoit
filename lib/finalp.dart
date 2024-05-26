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
    String mensagem;

    if (_pontuacao >= (_totalPerguntas)) {
      mensagem = 'Você é um verdadeiro fã nike';
    } else {
      mensagem = 'Temos um impostor';
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
             Padding( 
             padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Image.asset(
              'lib/images/nike.png',
              height: 240,
            ),
          ),
            const SizedBox(height: 48),

            const Text( 'Finish',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w900
              ),
            ),

          const Text(
          'copyright emal0n@github',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 10,
            color: Colors.grey,
           ),
          textAlign: TextAlign.center,
        ),

          const  SizedBox(height: 20),
            Text(
              "Pontuação: $_pontuacao de $_totalPerguntas",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),
          
            Text(
            mensagem,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
            
          const SizedBox(height: 24),
            
            GestureDetector (
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const InitialPage(),
                ),
              ),
            
           child:  Container(
              decoration: BoxDecoration (
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: Text(
                  'Restart',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize:16,
                  ),
                ),
              )
            )
            ),
          ],
        ),
    );
  }
}
