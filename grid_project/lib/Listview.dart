import 'package:flutter/material.dart';

class Listviewproject extends StatelessWidget {
  const Listviewproject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        reverse: true,
        padding: EdgeInsets.all(30),
        // scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hai Hello 1"),
            ),
          ),
          SizedBox(width: 10,height: 10,),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Hai Hello 2")),
            ),
          ),
           SizedBox(width: 10,height: 10,),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hai Hello 3"),
            ),
          )
        ],
      ),
    );
  }
}