enum ProjectCategory {
  ai(
      title: "Artificial Intelligence",
      description: " Cutting edge research on AI and ML",
      image: "ai_thumnail.png"),
  cybersecurity(
      title: "Cyber Security",
      description: "Research on recent trends in Cyber Security",
      image: "cyber_security.png"),
  wn(
      title: "Wireless Networks",
      description: "Research based on wireless networks and communication",
      image: "wireless-networks.png"),
  robotics(
      title: "Robotics",
      description: "Research based on AI and Robotics",
      image: "robotics.png");

  const ProjectCategory(
      {required this.title, required this.description, required this.image});
  final String title;
  final String description;
  final String image;
}
