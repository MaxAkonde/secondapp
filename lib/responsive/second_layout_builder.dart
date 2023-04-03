import 'package:flutter/material.dart';

class SecondLayoutBuilder extends StatelessWidget {
  const SecondLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Layout Builder"),
      ),
      body: LayoutBuilder(builder: (BuildContext, BoxConstraints) {
        //Large Ecran (Tablette, Desktop, TV, LandScape)
        if (BoxConstraints.maxWidth > 600) {
          return Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: BoxConstraints.maxWidth * 3 / 4,
                    decoration: BoxDecoration(
                      color: Colors.purple
                    ),
                    child: Center(
                      child: Text("Header de large Screen"),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: BoxConstraints.maxWidth * 3 / 4,
                    decoration: BoxDecoration(
                        color: Colors.orange
                    ),
                    child: Center(
                      child: Text("Content de large Screen"),
                    ),
                  ),
                  Container(
                    height: BoxConstraints.maxHeight - 400,
                    width: BoxConstraints.maxWidth * 3 / 4,
                    decoration: BoxDecoration(
                        color: Colors.indigo
                    ),
                    child: Center(
                      child: Text("Content de large Screen"),
                    ),
                  ),
                ],
              ),
              Container(
                width: BoxConstraints.maxWidth / 4,
                height: BoxConstraints.maxHeight,
                decoration: BoxDecoration(color: Colors.amber),
                child: Center(
                  child: Text("Sider Bar"),
                ),
              )
            ],
          );
        }
        //Petit Ecran
        return Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  "Header",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Center(
                child: Text(
                  "Content",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              height: BoxConstraints.maxHeight - 400,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
              ),
              child: Center(
                child: Text(
                  "Footer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
