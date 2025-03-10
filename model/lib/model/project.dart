import 'package:model/model/stats.dart';
import 'package:model/model/skills.dart';
import 'package:model/model/projectcategory.dart';

class Project with Stats {
  // Constructor
  Project(
      {required this.title,
      required this.description,
      required this.category,
      required this.id});

  final Set<Skill> skills = {};
  final ProjectCategory category;
  final String title;
  final String description;
  final String id;
  bool _IsFeatured = false;

  bool get isFeatured => _IsFeatured;

  void toggleisFeatured() {
    _IsFeatured = !_IsFeatured;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

// Adding dummy data
List<Project> projects = [
  Project(
      id: '1',
      title: 'Image Recognition',
      description: 'Recognise number plates',
      category: ProjectCategory.ai),
  Project(
      id: '2',
      title: 'Server security',
      description: 'Securing servers',
      category: ProjectCategory.cybersecurity),
  Project(
      id: '3',
      title: 'Adhoc Networks',
      description: 'Vehicular Adhoc Networks',
      category: ProjectCategory.wn),
  Project(
      id: '4',
      title: 'UAV',
      description: 'Autonomous UAV',
      category: ProjectCategory.robotics)
];
