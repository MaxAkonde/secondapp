import 'package:flutter/material.dart';

class IntresecWidget extends StatelessWidget {
  const IntresecWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Intresec")),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("1 Button")),
              ElevatedButton(
                  onPressed: () {}, child: Text("2 Button plus long")),
              ElevatedButton(
                  onPressed: () {}, child: Text("3 Button le plus long")),
            ],
          ),
        ),
      ),
    );
  }
}
