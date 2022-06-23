import 'package:flutter/material.dart';

import 'object.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LocalAndWebObjectsView()));
              },
              child: const Text(
                "Place Object",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ));
  }
}
