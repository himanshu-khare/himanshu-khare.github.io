import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  final VoidCallback onOpenResume;

  const Footer({required this.onOpenResume, super.key});

  @override
  Component build(BuildContext context) {
    return footer(
      classes:
          'w-full border-t border-slate-800/80 bg-slate-950/80 backdrop-blur-xl py-16 px-4 sm:px-6 lg:px-8 mt-24 text-left relative overflow-hidden',
      [
        // Subtle ambient glow
        div(
          classes:
              'ambient-glow w-[500px] h-[300px] bg-sky-500/5 bottom-0 left-1/2 -translate-x-1/2',
          [],
        ),

        div(
          classes:
              'max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-12 gap-12 items-start relative z-10',
          [
            // Brand & Elevator
            div(classes: 'md:col-span-5 flex flex-col gap-4', [
              div(classes: 'flex items-center gap-3', [
                div(
                  classes:
                      'w-10 h-10 rounded-xl bg-gradient-to-tr from-sky-500 to-indigo-600 p-[1px]',
                  [
                    div(
                      classes:
                          'w-full h-full bg-slate-950 rounded-[11px] flex items-center justify-center font-bold text-sky-400 font-mono text-sm',
                      [text('HK')],
                    ),
                  ],
                ),
                div(classes: 'flex flex-col', [
                  span(
                    classes: 'text-base font-bold text-slate-100',
                    [text('Himanshu Khare')],
                  ),
                  span(
                    classes: 'text-xs text-slate-400 font-mono',
                    [text('Senior Mobile Systems Architect (6.5+ Yrs)')],
                  ),
                ]),
              ]),
              p(
                classes:
                    'text-xs sm:text-sm text-slate-400 leading-relaxed max-w-sm',
                [
                  text(
                    'Pioneering production-grade offline-first mobile systems, low-latency binary streams, and native Bluetooth hardware interfaces across Flutter, Android, and iOS.',
                  ),
                ],
              ),
              div(
                classes:
                    'flex items-center gap-2 text-xs font-mono text-emerald-400',
                [
                  span(classes: 'w-2 h-2 rounded-full bg-emerald-400 ping-dot', []),
                  text('Open for Senior Mobile Roles & Consultations'),
                ],
              ),
            ]),

            // Quick Links
            div(classes: 'md:col-span-3 flex flex-col gap-3', [
              span(
                classes:
                    'text-xs font-mono font-bold uppercase tracking-wider text-slate-300',
                [text('NAVIGATION')],
              ),
              div(classes: 'flex flex-col gap-2 text-sm text-slate-400', [
                a(
                  href: '#architecture',
                  classes: 'hover:text-sky-400 transition-colors text-decoration-none',
                  [text('Architecture X-Ray')],
                ),
                a(
                  href: '#vault',
                  classes: 'hover:text-sky-400 transition-colors text-decoration-none',
                  [text('Project Vault (25+ Apps)')],
                ),
                a(
                  href: '#experience',
                  classes: 'hover:text-sky-400 transition-colors text-decoration-none',
                  [text('Experience Timeline')],
                ),
                a(
                  href: '#skills',
                  classes: 'hover:text-sky-400 transition-colors text-decoration-none',
                  [text('Technical Competencies')],
                ),
                button(
                  events: {'click': (_) => onOpenResume()},
                  classes:
                      'text-left text-sky-400 hover:text-sky-300 transition-colors cursor-pointer bg-transparent border-none p-0 text-sm font-semibold',
                  [text('Download Resume / CV')],
                ),
              ]),
            ]),

            // Connect & Channels
            div(classes: 'md:col-span-4 flex flex-col gap-3', [
              span(
                classes:
                    'text-xs font-mono font-bold uppercase tracking-wider text-slate-300',
                [text('DIRECT CONTACT & CHANNELS')],
              ),
              div(classes: 'flex flex-col gap-2 text-sm text-slate-400 font-mono text-xs', [
                div(classes: 'flex items-center gap-2', [
                  span(classes: 'text-sky-400', [text('✉')]),
                  a(
                    href: 'mailto:himanshukhare43071@gmail.com',
                    classes: 'hover:text-sky-400 transition-colors text-slate-300',
                    [text('himanshukhare43071@gmail.com')],
                  ),
                ]),
                div(classes: 'flex items-center gap-2', [
                  span(classes: 'text-sky-400', [text('📞')]),
                  a(
                    href: 'tel:+917042767608',
                    classes: 'hover:text-sky-400 transition-colors text-slate-300',
                    [text('+91 7042767608')],
                  ),
                ]),
                div(classes: 'flex items-center gap-2', [
                  span(classes: 'text-indigo-400', [text('🐙')]),
                  a(
                    href: 'https://github.com/himanshu-khare',
                    target: Target.blank,
                    classes: 'hover:text-sky-400 transition-colors text-slate-300',
                    [text('github.com/himanshu-khare')],
                  ),
                ]),
                div(classes: 'flex items-center gap-2', [
                  span(classes: 'text-emerald-400', [text('📦')]),
                  a(
                    href: 'https://tawftapp.github.io/',
                    target: Target.blank,
                    classes: 'hover:text-sky-400 transition-colors text-slate-300',
                    [text('tawftapp.github.io (100+ UI Kit)')],
                  ),
                ]),
                div(classes: 'flex items-center gap-2', [
                  span(classes: 'text-amber-400', [text('🎙️')]),
                  span(classes: 'text-slate-300', [text('@appdevwithhimanshu')]),
                ]),
              ]),
            ]),
          ],
        ),

        // Bottom Copyright & Framework Tag
        div(
          classes:
              'max-w-7xl mx-auto pt-8 mt-12 border-t border-slate-800/80 flex flex-col sm:flex-row items-center justify-between gap-4 text-xs font-mono text-slate-400',
          [
            div([
              text('© 2026 Himanshu Khare. Senior Mobile Systems Architect.'),
            ]),
            div(classes: 'flex items-center gap-2', [
              span(classes: 'text-sky-400', [text('⚡')]),
              text('Engineered in Dart with Jaspr • Deployed to GitHub Pages'),
            ]),
          ],
        ),
      ],
    );
  }
}
