import 'package:flutter/material.dart';
import 'package:secondapp/app_constants.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Images"),
      ),
      body: Center(
        child: Image.asset(AppConstants.image2),
      ),
    );
  }
}
