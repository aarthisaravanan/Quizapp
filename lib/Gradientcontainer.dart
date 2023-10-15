import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.StartQuiz, {super.key});
  final void Function() StartQuiz;
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 73, 34, 144),
        Color.fromARGB(255, 73, 34, 144)
      ])),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            TextButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                padding: const EdgeInsets.only(top: 60),
              ),
              child: const Text(' Learn Flutter the fun way'),
            ),
            OutlinedButton.icon(
              onPressed: () {
                StartQuiz();
              },
              icon: const Icon(Icons.arrow_right_alt_outlined),
              label: const Text('Start Quiz'),
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}

//  Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Image.asset('assets/images/quiz-logo.png', width: 200),
//         TextButton(
//             onPressed: rolldice,
//             style: TextButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 textStyle: const TextStyle(
//                   fontSize: 28,
//                 ),
//                 padding: const EdgeInsets.only(top: 20)),
//             child: const Text('Quiz'))
//       ],
//     );
