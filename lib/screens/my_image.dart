import 'package:flutter/material.dart';
import 'package:secondapp/gen/assets.gen.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Images"),
      ),
      body: Center(
        child: Image.asset(Assets.images.icons.chevronRight),
      ),
    );
  }
}
