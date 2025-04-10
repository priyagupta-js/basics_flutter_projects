import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  final String name;
  final String regno;
  const DisplayPage({required this.name, required this.regno});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Student Details"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Name: $name', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Roll No: $regno', style: TextStyle(fontSize: 18)),
          ]),
        ));
  }
}
