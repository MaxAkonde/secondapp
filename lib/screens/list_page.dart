import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste Page"),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Container(
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("http://via.placeholder.com/200"),
              ),
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(20),
            ),
            child: FittedBox(
              alignment: AlignmentDirectional.topStart,
              fit: BoxFit.scaleDown,
              child: Text("$index"),
            ),
          );
        }),
      ),
    );
  }
}
