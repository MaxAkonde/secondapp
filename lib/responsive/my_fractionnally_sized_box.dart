import 'package:flutter/material.dart';

class MyFractionnallySizedBox extends StatelessWidget {
  const MyFractionnallySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Expanded et flexible créent des mises en page flexibles
    ///Flexible est utiliser pour creer un widget flexible a l'interieur d'un row
    ///d'une column ou d'un flex
    ///Il permet a un enfant d'un conteneur flexible de se redimensionner de maniere
    ///dynamique en fonction de l'espace disponible dans le container parent
    ///Expanded il est similaire a flexible mais il doit etre utiliser comme
    ///enfant direct d'un row d'une column ou d'un flex
    return Scaffold(
      appBar: AppBar(
        title: Text("Fractionnally"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            //Widget qui s'adapte a l'espace disponible dans son parent
            Flexible(
              flex: 2,
              //Widget qui permet de definir une taille relative a la taille de son parent
              child: FractionallySizedBox(
                widthFactor: 0.8, //Definis la largeur du widget enfant
                heightFactor: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.limeAccent,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: FractionallySizedBox(
                widthFactor: 0.6,
                heightFactor: 0.6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: FractionallySizedBox(
                widthFactor: 0.4,
                heightFactor: 0.4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
