import 'package:flutter/material.dart';
import 'package:model/shared/shared_text.dart';
import 'package:model/theme.dart';
import 'package:model/model/project.dart';
import 'package:model/profile/profile.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(this.project, {super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            Image.asset('assets/img/category/${project.category.image}',
                width: 80),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledHeading(project.title),
                StyledText(project.category.title),
              ],
            ),
            const Expanded(child: SizedBox()),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => Profile(project: project),
                    ));
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: AppColors.textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
