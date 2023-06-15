import 'package:flutter/material.dart';


class Question {
  final String txt;
  final bool ans;

  Question(this.txt, this.ans);
}
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [
      Question('Is Cairo in Egypt?',true),
      Question('Is Giza in Egypt?',true),
      Question('Is New york in Egypt?',false),
      Question('Is ALex in Egypt?',true),
      Question('Is Belrin in Egypt?',false)
  ];

  int index = 0;
  int score = 0;

  void answerQuestion(bool answer) {
    if (answer == questions[index].ans) {
      setState(() {
        score++;
      });
    }

    if (index < questions.length - 1) {
      setState(() {
        index++;
      });
    } else {
      Navigator.pushNamed(context,'/results',arguments: score);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Quiz App'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text("Quiz App", style: TextStyle(fontSize:40) ),
          const SizedBox(height: 50),
            Text(
              'Question ${index + 1}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              questions[index].txt,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => answerQuestion(true),
                  child: const Text('True'),
                ),
                ElevatedButton(
                  onPressed: () => answerQuestion(false),
                  child: const Text('False'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// import 'QuestiosBank.dart';


// QuestionsBank qbank =QuestionsBank();

// int score=0;

// class QuestionsScreen extends StatefulWidget {
//   const QuestionsScreen({super.key});

//   @override
//   State<QuestionsScreen> createState() => _QuestionsScreenState();
// }

// class _QuestionsScreenState extends State<QuestionsScreen> {
//   @override
//   Widget build(BuildContext context) {
    
//     return Column(
//       children: [
//         ListTile(
//           title: Center(child: Text(qbank.getmyQuests().txt)),
//           // trailing:IconButton(onPressed: () {
//           //   setState(() {
//           //   qbank.move();
//           //   });
//           // }, icon: Icon(Icons.arrow_forward)),

//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(onPressed: () {
//               if (qbank.getmyQuests().ans == true){
//                 if (qbank.getmyQuests().length) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => ScoreScreen(score: score)),
//       );
//     }
                
//      else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => FailScreen(score: score)),
//       );
//     }
//   }
// }
//                 setState(() {
//                   score++;
//                   qbank.move();
//                 });
//               }
//             }, child: Text('true')),
//             ElevatedButton(onPressed: () {
//               if (qbank.getmyQuests().ans == false){
//                 setState(() {
//                   score--;
//                   qbank.move();
//                 });
//               }
//             }, child: Text('false'))

//           ],
//         ),
        
//         Text('Score $score')
//       ],
//     );
//   }
// }

