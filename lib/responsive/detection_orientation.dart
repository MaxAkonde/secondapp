import 'package:flutter/material.dart';

class DetectionOrientation extends StatefulWidget {
  const DetectionOrientation({Key? key}) : super(key: key);

  @override
  State<DetectionOrientation> createState() => _DetectionOrientationState();
}

class _DetectionOrientationState extends State<DetectionOrientation> {
  @override
  Widget build(BuildContext context) {
    final monOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detection"),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          print("$monOrientation");
          return orientation == Orientation.portrait
              ? _buildVerticalLayout()
              : _buildHorizontalLayout();
        },
      ),
    );
  }

  _buildVerticalLayout() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.indigo,
          ),
          height: 400,
          width: 400,
          child: Text("Vertical Container 1"),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          height: 200,
          width: 100,
          child: Text("Vertical Container 2"),
        ),
      ],
    );
  }

  _buildHorizontalLayout() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.black),
          height: 400,
          width: 400,
        ),
      ],
    );
  }
}
