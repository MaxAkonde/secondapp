import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({Key? key}) : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Text Form Field"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Veuillez saisir un username correct";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Text("UserName"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Traitement en cours..."),
                      ),
                    );
                  }
                  print(_formKey.currentState);
                },
                child: Text("Valider"),
              )
            ],
          ),
        ));
  }
}
