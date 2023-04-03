import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  final String titre;
  const MyGridView({Key? key, required this.titre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$titre"),
      ),
      body: OrientationBuilder(builder: (context, Orientation orientation) {
        return GridView.count(
          padding: EdgeInsets.all(18),
          crossAxisSpacing: 20, //Espace entre les colonnes
          mainAxisSpacing: 20, //Espace entre les lignes
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          scrollDirection: Axis.horizontal,
          children: List.generate(100, (index) {
            return Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("http://via.placeholder.com/200"),
                ),
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(1),
              ),
              child: Text("Item $index"),
            );
          }),
        );
      }),
    );
  }
}
