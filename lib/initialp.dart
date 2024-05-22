import 'package:flutter/material.dart';
import 'quizp.dart';

class InitialPage extends StatelessWidget {
 const InitialPage ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogo do Quiz: Projeto-01'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //começo para adicionar imagem
        children: [
          Expanded(
            flex: 5,
            child: Image.network(
              'https://cdn.awsli.com.br/2500x2500/9/9213/produto/196545102/170-b14c3659a6.jpg',
              fit: BoxFit.cover,
            ),
          ),
          //fim para adicionar imagem, segue o ElevatedButton
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuizPage()),
              );
            },
            child: const Text('Inicial'),
          ),
        ],
      ),
    );
  }
}