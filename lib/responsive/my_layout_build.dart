import 'package:flutter/material.dart';

class MyLayoutBuild extends StatelessWidget {
  const MyLayoutBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Layout Build'),
      ),
      body: LayoutBuilder(builder: (BuildContext, BoxConstraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              height: BoxConstraints.maxHeight * 1 / 4,
              width: BoxConstraints.maxWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: BoxConstraints.maxWidth / 2.1,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: BoxConstraints.maxWidth / 2.1,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              height: BoxConstraints.maxHeight * 1 / 3,
              width: BoxConstraints.maxWidth,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              height: BoxConstraints.maxHeight * 1 / 3,
              width: BoxConstraints.maxWidth,
            ),
          ],
        );
      }),
    );
  }
}
