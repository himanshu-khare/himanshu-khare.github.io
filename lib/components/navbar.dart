import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../services/firebase_portfolio_service.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  @override
  Component build(BuildContext context) {
    return nav(
      classes:
          'sticky top-0 z-50 w-full bg-[#0A0A0A]/90 backdrop-blur-md border-b border-white/[0.08]',
      [
        div(
          classes:
              'site-container h-16 flex items-center justify-between',
          [
            // Left: Clean Name
            a(
              href: '#',
              classes:
                  'flex items-center gap-3 text-decoration-none group cursor-pointer',
              [
                span(
                  classes:
                      'text-sm font-semibold tracking-tight text-[#F4F4F5] group-hover:text-white transition-colors',
                  [text('Himanshu Khare')],
                ),
              ],
            ),

            // Right: Clean text links & action
            div(classes: 'flex items-center gap-6 sm:gap-8 text-sm', [
              a(
                href: '#work',
                classes:
                    'text-[#A1A1AA] hover:text-[#F4F4F5] transition-colors text-decoration-none font-normal',
                [text('Work')],
              ),
              a(
                href: '#experience',
                classes:
                    'text-[#A1A1AA] hover:text-[#F4F4F5] transition-colors text-decoration-none font-normal',
                [text('Experience')],
              ),
              a(
                href: 'https://tawftapp.github.io/',
                target: Target.blank,
                classes:
                    'hidden md:inline-flex items-center gap-1 text-[#A1A1AA] hover:text-[#F4F4F5] transition-colors text-decoration-none font-normal',
                [
                  text('Tawft UI'),
                  span(classes: 'text-xs text-[#71717A]', [text('↗')]),
                ],
              ),
              a(
                href: FirebasePortfolioService.resumePdfUrl,
                target: Target.blank,
                classes:
                    'text-[#A1A1AA] hover:text-[#F4F4F5] transition-colors text-decoration-none font-normal',
                [text('Resume PDF')],
              ),
              a(
                href: 'mailto:himanshukhare43071@gmail.com',
                classes:
                    'btn-primary px-3.5 py-1.5 text-xs sm:text-sm font-medium rounded-lg text-decoration-none',
                [text('Get in Touch')],
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
