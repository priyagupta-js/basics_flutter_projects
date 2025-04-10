import 'package:flutter/material.dart';
import 'package:login_signup/DisplayPage.dart';

class Dashboard extends StatefulWidget {
  final String username;
  const Dashboard({required this.username});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _name = TextEditingController();
  final _regno = TextEditingController();

  void display() {
    final name = _name.text;
    final regno = _regno.text;

    if (name.isNotEmpty && regno.isNotEmpty) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DisplayPage(name: name, regno: regno)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Column(
          children: [
            Container(
              child: Text('Welcome ${widget.username}'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Name'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _regno,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Register number'),
            ),
            SizedBox(
              height: 20,
            ),
            FilledButton(onPressed: display, child: Text('Display'))
          ],
        ));
  }
}
