import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(),
              // Container(
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //   ),
              //   child: Image.network(
              //     "http://via.placeholder.com/150",
              //   ),
              // ),
              Text(
                "Max Tundé B. AKONDE",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FLUTTER DEVELOPPEUR",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.telegram), label: Text("+229 67 59 94 20")),
                    ElevatedButton(
                        onPressed: () {}, child: Text("akondemax@gmail.com")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
