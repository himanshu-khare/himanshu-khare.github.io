enum ProjectCategory {
  all('All (25+)'),
  enterprise('Enterprise & Offline-First'),
  fintech('Fintech & RMG'),
  ecommerce('E-Commerce & Consumer'),
  opensource('Open-Source & UI Kits');

  final String label;
  const ProjectCategory(this.label);
}

class ProjectModel {
  final String id;
  final String title;
  final String tagLine;
  final String description;
  final ProjectCategory category;
  final String folderName;
  final List<String> fileNames;
  final List<String> techStack;
  final Map<String, String> architectureMetrics;
  final String architectureFlow;
  final String? playStoreUrl;
  final String? githubUrl;
  final String? liveDemoUrl;
  final bool isFlagship;
  final String accentColor;

  const ProjectModel({
    required this.id,
    required this.title,
    required this.tagLine,
    required this.description,
    required this.category,
    required this.folderName,
    required this.fileNames,
    required this.techStack,
    required this.architectureMetrics,
    required this.architectureFlow,
    this.playStoreUrl,
    this.githubUrl,
    this.liveDemoUrl,
    this.isFlagship = false,
    this.accentColor = '#38BDF8',
  });

  /// Resolves the Firebase Storage public download URL for a given screenshot index or filename.
  String getImageUrl([int index = 0]) {
    final fileName = (fileNames.isNotEmpty && index < fileNames.length)
        ? fileNames[index]
        : 'screenshot1.png';
    final encodedPath = Uri.encodeComponent('$folderName/$fileName');
    return 'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/$encodedPath?alt=media';
  }

  List<String> getAllImageUrls() {
    if (fileNames.isEmpty) {
      return [getImageUrl(0)];
    }
    return fileNames.map((fn) {
      final encodedPath = Uri.encodeComponent('$folderName/$fn');
      return 'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/$encodedPath?alt=media';
    }).toList();
  }
}
