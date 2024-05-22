import 'package:flutter/material.dart';
import 'quizp.dart';

class InitialPage extends StatelessWidget {
 const InitialPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.yellow,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding( 
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
              'lib/images/nike.png',
              height: 240,
            ),
          ),
          const SizedBox(height: 48),
// Main t
          const Text(
          'Just Do It',
           style: TextStyle(
            fontWeight:FontWeight.bold ,
            fontSize: 20,
           ),
        ),
        
          const SizedBox(height: 24),
//sub t
          const Text(
          'Fan quiz nike app by emalon91',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
           ),
          textAlign: TextAlign.center,
        ),

          const SizedBox(height: 24),
//
          GestureDetector (
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QuizPage(),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration (
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: Text(
                  'Start Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:16,
                  ),
                ),
              )
            )
          ],
        ),
      ),
    ),
    );
  }
}