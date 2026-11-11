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
      classes:
          'min-h-screen flex flex-col bg-[#08090B] text-[#F4F4F5] relative selection:bg-white/20 selection:text-white overflow-hidden',
      [
        // Top Hairline Gleam
        div(classes: 'site-top-gleam', []),

        // Tactile Micro-Noise Texture
        div(classes: 'site-noise-overlay', []),

        // Ambient Top Horizon Light
        div(classes: 'site-ambient-light', []),

        // Precision Engineering Coordinate Grid
        div(classes: 'site-grid-pattern', []),

        // Primary Content Stream
        div(
          classes: 'relative z-10 flex flex-col min-h-screen',
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
        ),
      ],
    );
  }
}
