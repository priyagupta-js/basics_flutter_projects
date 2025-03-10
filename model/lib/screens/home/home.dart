import 'package:flutter/material.dart';
import 'package:model/model/project.dart';
import 'package:model/screens/create/create.dart';
import 'package:model/screens/home/project_card.dart';
import 'package:model/shared/shared_text.dart';
import 'package:model/shared/styles_button.dart';

// import 'package:model/theme.dart';
// import 'package:model/shared_text.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle('YOUR PROJECTS'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: projects.length,
                itemBuilder: (_, index) {
                  return ProjectCard(projects[index]);
                },
              ),
            ),
            StyledButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Create()));
                },
                child: StyledHeading('Create New'))
          ],
        ),
      ),
    );
  }
}
