class ExperienceModel {
  final String period;
  final String role;
  final String company;
  final String clientOrProduct;
  final String location;
  final String summary;
  final List<String> keyAchievements;
  final List<String> techStack;
  final String architectureBadge;

  const ExperienceModel({
    required this.period,
    required this.role,
    required this.company,
    required this.clientOrProduct,
    required this.location,
    required this.summary,
    required this.keyAchievements,
    required this.techStack,
    required this.architectureBadge,
  });
}
