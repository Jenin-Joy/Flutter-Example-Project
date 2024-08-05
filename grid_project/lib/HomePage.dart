import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grid_project/gridbuild_project.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 208, 208),
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          padding: EdgeInsets.all(10),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDisplay(),));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10),
                    top: Radius.circular(10),
                  ),
                  color: Colors.white
                ),
                height: 18,
                width: 18,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                  top: Radius.circular(10),
                ),
                color: Colors.white
              ),
              height: 18,
              width: 18,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                  top: Radius.circular(10),
                ),
                color: Colors.white
              ),
              height: 18,
              width: 18,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                  top: Radius.circular(10),
                ),
                color: Colors.white
              ),
              height: 18,
              width: 18,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                  top: Radius.circular(10),
                ),
                color: Colors.white
              ),
              height: 18,
              width: 18,
            ),
          ],
        ));
  }
}
