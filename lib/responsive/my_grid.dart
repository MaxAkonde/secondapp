import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid"),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(18),
        crossAxisCount: 2, //Liste avec 2 colonnes
        crossAxisSpacing: 20, //Espace entre les colonnes
        mainAxisSpacing: 20, //Espace entre les lignes
        reverse: true,
        physics:
            BouncingScrollPhysics(), //FixedExtentScrollPhysics() NeverScrollableScrollPhysics() ClampingScrollPhysics()
        children: List.generate(100, (index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "Item : $index",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          );
        }),
      ),
    );
  }
}
