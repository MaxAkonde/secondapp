import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        //Widget positionner en haut a gauche
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amberAccent,
          ),
        ),
        Positioned(
          bottom: 40,
          height: 40,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.indigo,
          ),
        ),
        Positioned(
          top: 150,
          left: 50,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
