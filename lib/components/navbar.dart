import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Navbar extends StatelessComponent {
  final VoidCallback onOpenResume;

  const Navbar({required this.onOpenResume, super.key});

  @override
  Component build(BuildContext context) {
    return nav(
      classes:
          'sticky top-0 z-50 w-full glass-panel border-b border-slate-800/80 backdrop-blur-xl',
      [
        div(
          classes:
              'max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-20 flex items-center justify-between',
          [
            // Brand Logo & Status
            a(
              href: '#',
              classes: 'flex items-center gap-3 group text-decoration-none',
              [
                div(
                  classes:
                      'w-10 h-10 rounded-xl bg-gradient-to-tr from-sky-500 to-indigo-600 p-[1px] shadow-lg shadow-sky-500/20 group-hover:shadow-sky-500/40 transition-all duration-300',
                  [
                    div(
                      classes:
                          'w-full h-full bg-slate-950 rounded-[11px] flex items-center justify-center font-bold text-sky-400 font-mono text-sm tracking-wider',
                      [text('HK')],
                    ),
                  ],
                ),
                div(classes: 'flex flex-col', [
                  div(classes: 'flex items-center gap-2', [
                    span(
                      classes:
                          'text-slate-100 font-bold text-base tracking-tight group-hover:text-sky-400 transition-colors',
                      [text('Himanshu Khare')],
                    ),
                    span(
                      classes:
                          'hidden sm:inline-flex items-center gap-1.5 px-2 py-0.5 rounded-full text-[11px] font-medium bg-emerald-500/10 text-emerald-400 border border-emerald-500/20',
                      [
                        span(
                          classes:
                              'w-1.5 h-1.5 rounded-full bg-emerald-400 ping-dot',
                          [],
                        ),
                        text('Available'),
                      ],
                    ),
                  ]),
                  span(
                    classes: 'text-xs text-slate-400 font-mono',
                    [text('Senior Mobile Systems Architect')],
                  ),
                ]),
              ],
            ),

            // Navigation Links (Desktop)
            div(
              classes: 'hidden md:flex items-center gap-8 text-sm font-medium',
              [
                a(
                  href: '#architecture',
                  classes:
                      'text-slate-300 hover:text-sky-400 transition-colors',
                  [text('Architecture')],
                ),
                a(
                  href: '#vault',
                  classes:
                      'text-slate-300 hover:text-sky-400 transition-colors flex items-center gap-1.5',
                  [
                    text('Project Vault'),
                    span(
                      classes:
                          'px-1.5 py-0.2 rounded text-[10px] font-mono bg-sky-500/10 text-sky-400 border border-sky-500/20',
                      [text('25+')],
                    ),
                  ],
                ),
                a(
                  href: '#experience',
                  classes:
                      'text-slate-300 hover:text-sky-400 transition-colors',
                  [text('Experience')],
                ),
                a(
                  href: '#skills',
                  classes:
                      'text-slate-300 hover:text-sky-400 transition-colors',
                  [text('Tech Stack')],
                ),
                a(
                  href: 'https://tawftapp.github.io/',
                  target: Target.blank,
                  classes:
                      'text-slate-300 hover:text-sky-400 transition-colors flex items-center gap-1',
                  [
                    text('Tawft UI'),
                    span(classes: 'text-xs text-sky-400 font-mono', [text('↗')]),
                  ],
                ),
              ],
            ),

            // Actions: Resume & GitHub
            div(classes: 'flex items-center gap-3', [
              button(
                events: {'click': (_) => onOpenResume()},
                classes:
                    'px-4 py-2 rounded-lg text-xs sm:text-sm font-semibold bg-slate-800 hover:bg-slate-700 text-slate-200 border border-slate-700/80 transition-all flex items-center gap-2 cursor-pointer shadow-sm hover:border-slate-600',
                [
                  span(classes: 'text-sky-400 font-mono', [text('📄')]),
                  text('Resume'),
                ],
              ),
              a(
                href: 'mailto:himanshukhare43071@gmail.com',
                classes:
                    'hidden sm:inline-flex px-4 py-2 rounded-lg text-xs sm:text-sm font-semibold bg-gradient-to-r from-sky-500 to-indigo-600 text-white shadow-lg shadow-sky-500/20 hover:shadow-sky-500/40 transition-all duration-300 cursor-pointer text-decoration-none',
                [text('Contact Me')],
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
