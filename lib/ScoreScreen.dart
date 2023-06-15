import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late int score = ModalRoute.of(context)?.settings.arguments as int;
    late bool passed = score >= 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              passed ? 'Success' : 'Failed!',
              style: TextStyle(
                fontSize: 24,
                color: passed ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
