import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final String titre;
  const MyListView({Key? key, required this.titre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$titre"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, position) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "$position",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            );
          }),
    );
  }
}
