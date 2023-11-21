import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  List<bool> languages = [false, false, false, false];
  List values = ["Laravel", "Symfony", "React", "VueJs"];
  bool _value_laravel = false;
  bool _value_symfony = false;
  bool _value_react = false;
  bool _value_vue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My CheckBox"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: Text("Laravel"),
            value: languages[0],
            onChanged: onChangeCheck,
          ),
          CheckboxListTile(
            title: Text("Symfony"),
            value: languages[1],
            //selected: _valueSelected,
            onChanged: onChangeCheck,
          ),
          CheckboxListTile(
            title: Text("React"),
            value: languages[2],
            //selected: _valueSelected,
            onChanged: onChangeCheck,
          ),
          CheckboxListTile(
            title: Text("VueJs"),
            value: languages[3],
            //selected: _valueSelected,
            onChanged: onChangeCheck,
          ),
        ],
      ),
    );
  }

  void onChangeCheck(bool? value) {
    switch (languages) {
      case languages[0]:
        setState(() {});
        break;
    }
    setState(() {
      languages[0] = value!;
    });
    // for (dynamic i = 0; i < languages.length; i++) {
    //   setState(() {
    //     languages[i] = value!;
    //   });
    // }
  }

  // void checkChange(bool? value) {
  //   setState(() {
  //     _value_laravel = value!;
  //   });
  // }
}
