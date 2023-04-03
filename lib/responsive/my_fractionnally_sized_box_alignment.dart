import 'package:flutter/material.dart';

class MyFractionnallySizedBoxAlignment extends StatelessWidget {
  const MyFractionnallySizedBoxAlignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alignment"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.indigo),
        alignment: Alignment.bottomRight,
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Button"),
          ),
        ),
      ),
    );
  }
}
