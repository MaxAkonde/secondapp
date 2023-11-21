import 'package:flutter/material.dart';

class MyRadioList extends StatefulWidget {
  const MyRadioList({Key? key}) : super(key: key);

  @override
  State<MyRadioList> createState() => _MyRadioListState();
}

class _MyRadioListState extends State<MyRadioList> {
  int _selectedValue = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Radio List"),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text("Option 1"),
            value: 1,
            groupValue: _selectedValue,
            onChanged: radioOnChange,
            activeColor: Colors.redAccent,
            subtitle: Text("sous titre"),
            secondary: Icon(Icons.save_alt_sharp),
            isThreeLine: true,
          ),
          RadioListTile(
            title: Text("Option 2"),
            value: 2,
            groupValue: _selectedValue,
            onChanged: radioOnChange,
          ),
          SizedBox(
            height: 10,
          ),
          Text("Vous avez choisi $_selectedValue")
        ],
      ),
    );
  }

  radioOnChange(value) {
    setState(() {
      _selectedValue = value;
    });
  }
}
