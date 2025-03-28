import 'package:flutter/material.dart';
import 'package:model/model/project.dart';
import 'package:model/model/skills.dart';
import 'package:model/shared/shared_text.dart';
import 'package:model/theme.dart';

class SkillList extends StatefulWidget {
  const SkillList(this.project, {super.key});
  final Project project;

  @override
  State<SkillList> createState() => _SkillListState();
}

class _SkillListState extends State<SkillList> {
  late List<Skill> availableSkills;
  Skill? selectedSkill; // Use nullable Skill

  @override
  void initState() {
    super.initState();

    // Get available skills based on project category
    availableSkills = allSkills.where((skill) {
      return skill.projectCategory == widget.project.category;
    }).toList();

    if (availableSkills.isNotEmpty) {
      if (widget.project.skills.isNotEmpty) {
        selectedSkill = widget.project.skills.first;
      } else {
        selectedSkill = availableSkills[0];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(16),
        color: AppColors.secondaryColor.withValues(alpha: 0.5),
        child: Column(
          children: [
            StyledHeading('Choose a skill for your project'),
            StyledText('Skills are unique to your project category'),
            SizedBox(
              height: 20,
            ),
            // Show message if no skills are available
            if (availableSkills.isNotEmpty)
              Row(
                children: availableSkills.map((skill) {
                  return Container(
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(2),
                    color: skill == selectedSkill
                        ? const Color.fromARGB(255, 255, 0, 0)
                        : Colors.transparent,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.project.updateSkill(skill);
                          selectedSkill = skill;
                        });
                      },
                      child: Image.asset(
                        'assets/img/skills/${skill.image}',
                        width: 70,
                      ),
                    ),
                  );
                }).toList(),
              ),
            SizedBox(
              height: 10,
            ),
            if (selectedSkill != null) StyledText(selectedSkill!.name),
          ],
        ),
      ),
    );
  }
}
