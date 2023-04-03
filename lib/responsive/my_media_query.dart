import 'package:flutter/material.dart';

class MyMediaQuery extends StatelessWidget {
  const MyMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Media"),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.indigo),
            width: sizeX / 3,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.purple),
            width: sizeX / 3,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.amber),
            width: sizeX / 3,
          ),
        ],
      ),
    );
  }
}
