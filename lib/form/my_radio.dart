import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String _sexe = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sexe = "masculin";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Radio List"),
      ),
      body: Column(
        children: [
          Radio(
            activeColor: Colors.cyan,
            value: "masculin",
            groupValue: _sexe,
            onChanged: setSelectedRadio,
          ),
          Radio(
            value: "feminin",
            groupValue: _sexe,
            onChanged: setSelectedRadio,
          ),
        ],
      ),
    );
  }

  setSelectedRadio(String? value) {
    setState(() {
      _sexe = value!;
    });
  }
}
