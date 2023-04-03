import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Screen"),
      ),
      body: Container(
        child: Text("Je suis un container"),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
        //color: Colors.indigo,
        decoration: BoxDecoration(
          color: Colors.indigo,
          border: Border.all(color: Colors.purple, width: 3),
          //borderRadius: BorderRadius.all(Radius.circular(18)),
          //shape: BoxShape.circle
          // image: DecorationImage(
          //   image: NetworkImage("http://via.placeholder.com/500"),
          //   fit: BoxFit.fitHeight,
          // ),
        ),
        //transform: Matrix4.rotationZ(3.14 / 4),
        //width: double.infinity,
        width: double.infinity,
        height: 200,
      ),
    );
  }
}
