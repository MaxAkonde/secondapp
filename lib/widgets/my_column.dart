import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("06 - space evenly"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.add, size: 50),
              SizedBox(
                width: 100,
              ),
              Icon(
                Icons.ac_unit,
                size: 100,
              ),
              Icon(
                Icons.access_alarm,
                size: 50,
              ),
            ],
          ),
          Container(
            child: ElevatedButton(onPressed: () {}, child: Text("Ajouter")),
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
          )
        ],
      ),
    );
  }
}
