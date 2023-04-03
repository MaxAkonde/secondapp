import 'package:flutter/material.dart';

class Quizz extends StatelessWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("")
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Vrai')),
                  ElevatedButton(onPressed: () {}, child: Text('Faux')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
