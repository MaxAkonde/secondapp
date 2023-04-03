import 'package:flutter/material.dart';

class MyFractionnallySizedBoxSpace extends StatelessWidget {
  const MyFractionnallySizedBoxSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Space"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.purple,
        child: Column(
          children: [
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(color: Colors.white),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 1 / 2,
              ),
            ),
            Container(
              width: 200,
              height: 50,
              color: Colors.amber,
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 1 / 2,
              ),
            ),
            Container(
              width: 200,
              height: 50,
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}
