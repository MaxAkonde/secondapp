import 'package:flutter/material.dart';

class LigthPage extends StatefulWidget {
  const LigthPage({Key? key}) : super(key: key);

  @override
  State<LigthPage> createState() => _LigthPageState();
}

class _LigthPageState extends State<LigthPage> {
  String _buttonText = "On";
  String _ligthImage = "assets/images/pic_bullOff.png";
  bool _ligthBool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ligth Page"),
        backgroundColor: const Color.fromRGBO(248, 230, 239, 1.0),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(_ligthImage),
            width: 250,
            height: 250,
          ),
          ElevatedButton(
            onPressed: _lightPressed,
            child: Text(_buttonText),
          )
        ],
      ),
    );
  }

  void _lightPressed() {
    setState(() {
      if (!_ligthBool) {
        _buttonText = "Off";
        _ligthImage = "assets/images/pic_bullOn.png";
        _ligthBool = true;
      } else {
        _buttonText = "On";
        _ligthImage = "assets/images/pic_bullOff.png";
        _ligthBool = false;
      }
    });
  }
}
