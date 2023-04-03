import 'package:flutter/material.dart';
import 'package:secondapp/screens/my_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //useMaterial3: true,
        colorSchemeSeed: const Color.fromRGBO(188, 0, 74, 1.0),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyImage(),
    );
  }
}
