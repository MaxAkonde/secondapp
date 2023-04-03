import 'package:flutter/material.dart';

class MyInterface extends StatelessWidget {
  const MyInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interface"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 100,
                    height: 200,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    width: 100,
                    height: 200,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    //margin: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 200,
                  ),
                )
              ],
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //             color: Colors.green,
            //             borderRadius: BorderRadius.all(Radius.circular(20))),
            //         width: 100,
            //         height: 200,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.all(Radius.circular(20)),
            //         ),
            //         width: 100,
            //         height: 200,
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
