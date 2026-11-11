class SkillCategoryModel {
  final String title;
  final String icon;
  final String description;
  final List<String> skills;
  final String levelBadge;

  const SkillCategoryModel({
    required this.title,
    required this.icon,
    required this.description,
    required this.skills,
    required this.levelBadge,
  });
}
