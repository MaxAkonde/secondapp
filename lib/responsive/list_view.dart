import 'package:flutter/material.dart';

class SecondListView extends StatelessWidget {
  const SecondListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second View"),
      ),
      body: ListView.separated(
          itemBuilder: (context, position) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("List Item : $position"),
              ),
            );
          },
          separatorBuilder: (context, position) {
            return Card(
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Separator : $position"),
              ),
            );
          },
          itemCount: 10),
    );
  }
}
