import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/app_inspector_modal.dart';
import '../components/bento_architecture_showcase.dart';
import '../components/experience_timeline.dart';
import '../components/footer.dart';
import '../components/hero_phone_dock.dart';
import '../components/navbar.dart';
import '../components/project_vault_grid.dart';
import '../components/resume_modal.dart';
import '../components/skills_matrix.dart';
import '../models/project_model.dart';

class HomePage extends StatefulComponent {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProjectModel? _inspectingProject;
  bool _showResumeModal = false;

  void _openResume() {
    setState(() {
      _showResumeModal = true;
    });
  }

  void _closeResume() {
    setState(() {
      _showResumeModal = false;
    });
  }

  void _inspectProject(ProjectModel project) {
    setState(() {
      _inspectingProject = project;
    });
  }

  void _closeInspectProject() {
    setState(() {
      _inspectingProject = null;
    });
  }

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'min-h-screen flex flex-col bg-[#090D16] text-slate-100 relative',
      [
        // Top Sticky Navbar
        Navbar(onOpenResume: _openResume),

        // Hero with Interactive CSS Phone Dock
        HeroPhoneDock(onOpenResume: _openResume),

        // Apple Bento Grid Flagship Showcase with Architecture X-Ray Flip Toggle
        BentoArchitectureShowcase(onInspectProject: _inspectProject),

        // Dynamic Firebase 25+ Projects Vault
        ProjectVaultGrid(onSelectProject: _inspectProject),

        // 6.5+ Yrs Experience Timeline
        const ExperienceTimeline(),

        // Technical Skills Matrix
        const SkillsMatrix(),

        // Footer
        Footer(onOpenResume: _openResume),

        // Inspector Modal (when project is clicked)
        if (_inspectingProject != null)
          AppInspectorModal(
            project: _inspectingProject!,
            onClose: _closeInspectProject,
          ),

        // Digital Resume Modal (when resume is clicked)
        if (_showResumeModal)
          ResumeModal(onClose: _closeResume),
      ],
    );
  }
}
