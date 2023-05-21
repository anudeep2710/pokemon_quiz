import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
    final void Function() startQuiz;

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 185, 157, 21), Color.fromARGB(255, 221, 225, 0)],
            ),
          ),
          child: Column(
            children:  [
               const SizedBox(height: 50),
              Image.asset("assets/images/p.png"),
              const SizedBox(height: 150),
              Image.asset(
                "assets/images/pokeball-png-45330.png",
                width: 100,
              ),
             const SizedBox(height: 80),
             OutlinedButton(onPressed: startQuiz, child:const Text("start quiz"))
            ],
          ),
        ),
      ),
    );
  }
}
