import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String userName = "Toto";
  late TextEditingController _controller;

  final _passwordController = TextEditingController();

  //methode appeler une seule fois juste apres que la methode state a été appeler
  //elle est utiliser pour initialiser l'etat du widget et pour effectuer des opérations
  //qui ne doivent etre utiliser qu'une seule fois
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  //methode appeler lorsque le widget est retirer de l'arbre des widgets
  //elle est utiliser pour effectuer des opérations de netoyage
  @override
  void dispose() {
    _passwordController.dispose();
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My TextField"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              label: Text("Usename"),
              filled: true,
            ),
            onChanged: (String value) {
              setState(() {
                userName = value;
              });
            },
            onSubmitted: (value) async {
              await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Merci d'avoir remplir le formulaire"),
                      content: Text("Vous avez saisi : $value"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Fermer"),
                        ),
                      ],
                    );
                  });
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            autofocus: true,
            controller: _passwordController,
            decoration: InputDecoration(
              label: Text("Password"),
              filled: true,
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Data : $userName",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Montre moi la valeur",
        child: Icon(Icons.save_alt_sharp),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Merci d'avoir soumis le formulaire"),
                  content: Text(
                      "Vous avez saisi\n UserName : ${_controller.text} \n Password : ${_passwordController.text}"),
                );
              });
        },
      ),
    );
  }
}
