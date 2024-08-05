import 'package:flutter/material.dart';
import 'package:grid_project/data.dart';

class listbuilderproject extends StatelessWidget {
  const listbuilderproject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            isThreeLine: true,
            shape: Border(bottom: BorderSide(width: .1)),
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage(product["product-image-url"])),
                color: const Color.fromARGB(255, 175, 175, 175)
              ),
              height: 50,
              width: 50,
            ),
            title: Text(product["product-name"]),
            subtitle: Text(product["header-top-left-text"]),
            trailing: Text(product["header-top-right-text"]),
          );
        },
      ),
    );
  }
}
