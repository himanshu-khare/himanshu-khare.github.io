import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../services/firebase_portfolio_service.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  @override
  Component build(BuildContext context) {
    return header(
      classes:
          'sticky top-0 sm:top-3 z-50 w-full px-0 sm:px-6 flex justify-center pointer-events-none',
      [
        nav(
          classes:
              'pointer-events-auto w-full sm:max-w-5xl h-14 px-4 sm:px-5 flex items-center justify-between sm:rounded-full bg-[#0C0D11]/90 backdrop-blur-xl border-b sm:border border-white/[0.08] shadow-[0_12px_32px_-8px_rgba(0,0,0,0.8),inset_0_1px_0_0_rgba(255,255,255,0.06)] transition-all',
          [
            // Left: Clean Monogram & Name
            a(
              href: '#',
              classes:
                  'flex items-center gap-2.5 text-decoration-none group cursor-pointer',
              [
                div(
                  classes:
                      'w-7 h-7 rounded-lg bg-white/[0.06] border border-white/[0.12] flex items-center justify-center font-mono text-[11px] font-semibold text-[#F4F4F5] group-hover:border-white/[0.25] group-hover:bg-white/[0.1] transition-all',
                  [text('HK')],
                ),
                div(classes: 'flex items-center gap-2', [
                  span(
                    classes:
                        'text-sm font-semibold tracking-tight text-[#F4F4F5] group-hover:text-white transition-colors',
                    [text('Himanshu Khare')],
                  ),
                  span(
                    classes:
                        'hidden lg:inline-flex text-[11px] font-mono text-[#71717A] pl-2 border-l border-white/[0.1]',
                    [text('Mobile Architect')],
                  ),
                ]),
              ],
            ),

            // Right: Clean interactive pill links & CTA
            div(classes: 'flex items-center gap-1 sm:gap-2', [
              a(
                href: '#work',
                classes: 'nav-link',
                [text('Work')],
              ),
              a(
                href: '#experience',
                classes: 'nav-link',
                [text('Experience')],
              ),
              a(
                href: 'https://tawftapp.github.io/',
                target: Target.blank,
                classes:
                    'nav-link hidden md:inline-flex items-center gap-1',
                [
                  text('Tawft UI'),
                  span(classes: 'text-[10px] text-[#71717A]', [text('↗')]),
                ],
              ),
              a(
                href: FirebasePortfolioService.resumePdfUrl,
                target: Target.blank,
                classes: 'nav-link hidden sm:inline-flex',
                [text('Resume')],
              ),
              div(
                classes:
                    'w-px h-4 bg-white/[0.1] mx-1 sm:mx-2 hidden sm:block',
                [],
              ),
              a(
                href: 'mailto:himanshukhare43071@gmail.com',
                classes: 'nav-cta-btn',
                [
                  text('Get in Touch'),
                  span(classes: 'text-[10px] opacity-70', [text('↗')]),
                ],
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
