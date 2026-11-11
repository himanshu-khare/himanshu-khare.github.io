import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/experience_skills_section.dart';
import '../components/footer.dart';
import '../components/hero_section.dart';
import '../components/navbar.dart';
import '../components/work_gallery.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'min-h-screen flex flex-col bg-[#0A0A0A] text-[#F4F4F5] relative selection:bg-white/20 selection:text-white',
      [
        // Section 1: Minimalist Navbar
        const Navbar(),

        // Section 2: Calm, Editorial Hero Section with Real App Showcase Frame
        const HeroSection(),

        // Section 3: Selected Work & Firebase Project Gallery (Real Screenshots)
        const WorkGallery(),

        // Section 4: Compact Experience & Skills List
        const ExperienceSkillsSection(),

        // Minimalist Footer
        const Footer(),
      ],
    );
  }
}
