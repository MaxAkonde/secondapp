import 'package:flutter/material.dart';

class MyWidgetFlexible extends StatelessWidget {
  const MyWidgetFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Flexible")),
      body: Row(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(color: Colors.purple),
              //child: Text("1 Container"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(color: Colors.indigo),
              //child: Text("2 Container"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.amberAccent),
              //child: Text("3 Container"),
            ),
          ),
        ],
      ),
    );
  }
}
