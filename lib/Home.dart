import 'package:flutter/material.dart';
import 'package:task1/Login.dart';
import 'package:task1/QuestionsScreen.dart';


class HomePage extends StatefulWidget {
  const HomePage({ super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int idx = 0;
  List<Widget> screens = [LoginScreen(), QuizScreen(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer : Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: Text('Flutter Tasks day 3'),
              ),
              ListTile(
                title: const Text('Login'),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                    idx= 0;
                  });
                },
              ),
              ListTile(
                title: const Text('Quiz App'),
                onTap: () {
                    setState(() {
                    Navigator.pop(context);
                    idx= 1;
                  });
                },
              ),
            ],
          ),
        ),
      appBar: AppBar(title: const Text("Flutter Tasks Day 3")),
      body: screens[idx],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        selectedLabelStyle: const TextStyle(color: Colors.redAccent),
        onTap: (value){
          setState(() {
            idx = value;
          });
        },
        currentIndex: idx,
          items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.login), label: "Login"),
                  BottomNavigationBarItem(
                     icon: Icon(Icons.question_answer), label: "Quiz"),
    ],
      ),
    );
  }
}