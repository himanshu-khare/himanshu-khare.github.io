import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/project_model.dart';

class AppInspectorModal extends StatefulComponent {
  final ProjectModel project;
  final VoidCallback onClose;

  const AppInspectorModal({
    required this.project,
    required this.onClose,
    super.key,
  });

  @override
  State<AppInspectorModal> createState() => _AppInspectorModalState();
}

class _AppInspectorModalState extends State<AppInspectorModal> {
  int _activeImageIndex = 0;

  @override
  Component build(BuildContext context) {
    final project = component.project;
    final images = project.getAllImageUrls();

    return div(
      classes: 'modal-backdrop',
      events: {
        'click': (e) {
          // If clicked directly on the backdrop, close modal
          component.onClose();
        }
      },
      [
        div(
          classes:
              'modal-content w-full max-w-4xl max-h-[92vh] glass-panel rounded-3xl overflow-hidden border border-slate-700/80 shadow-2xl flex flex-col',
          events: {
            'click': (e) {
              // Prevent closing when clicking inside content
            }
          },
          [
            // Modal Top Header
            div(
              classes:
                  'px-6 py-4 bg-slate-900/90 border-b border-slate-800 flex items-center justify-between z-10',
              [
                div(classes: 'flex items-center gap-3', [
                  div(
                    classes:
                        'w-8 h-8 rounded-lg bg-sky-500/20 text-sky-400 flex items-center justify-center font-mono font-bold text-xs',
                    [text('HK')],
                  ),
                  div(classes: 'flex flex-col', [
                    h3(
                      classes: 'text-base font-bold text-slate-100',
                      [text(project.title)],
                    ),
                    span(
                      classes: 'text-[11px] font-mono text-sky-400',
                      [text('Firebase: gs://portfolio-e3e4a.appspot.com/o/${project.folderName}')],
                    ),
                  ]),
                ]),

                button(
                  events: {'click': (_) => component.onClose()},
                  classes:
                      'w-8 h-8 rounded-full bg-slate-800 hover:bg-slate-700 text-slate-300 hover:text-white flex items-center justify-center border border-slate-700 cursor-pointer transition-colors text-sm font-bold',
                  [text('✕')],
                ),
              ],
            ),

            // Modal Body: Scrollable Content
            div(
              classes:
                  'p-6 sm:p-8 overflow-y-auto flex-1 grid grid-cols-1 md:grid-cols-12 gap-8 items-start',
              [
                // Left Column: Scrollable Phone Frame Carousel (5 cols)
                div(
                  classes:
                      'md:col-span-5 flex flex-col items-center justify-center',
                  [
                    // Mini Phone Frame
                    div(
                      classes:
                          'relative w-[240px] sm:w-[260px] h-[480px] sm:h-[500px] bg-black rounded-[40px] border-[4px] border-slate-700 shadow-2xl overflow-hidden flex flex-col',
                      [
                        // Dynamic Island
                        div(
                          classes:
                              'absolute top-3 left-1/2 -translate-x-1/2 w-20 h-5 bg-black rounded-full z-20 border border-white/10 flex items-center justify-between px-2',
                          [
                            div(classes: 'w-2 h-2 rounded-full bg-slate-900', []),
                            div(classes: 'w-1.5 h-1.5 rounded-full bg-slate-800', []),
                          ],
                        ),

                        // Image Screen
                        div(
                          classes:
                              'flex-1 bg-slate-950 overflow-hidden relative flex items-center justify-center',
                          [
                            img(
                              src: images[_activeImageIndex],
                              alt: '${project.title} screenshot',
                              classes:
                                  'w-full h-full object-cover object-top transition-opacity duration-300',
                              attributes: {
                                'onerror':
                                    "this.onerror=null; this.src='data:image/svg+xml;utf8,<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"300\" height=\"600\" viewBox=\"0 0 300 600\"><rect width=\"100%\" height=\"100%\" fill=\"%230b1120\"/><text x=\"50%\" y=\"40%\" fill=\"%2338bdf8\" font-family=\"monospace\" font-size=\"16\" text-anchor=\"middle\">${project.title}</text><text x=\"50%\" y=\"46%\" fill=\"%2394a3b8\" font-family=\"monospace\" font-size=\"12\" text-anchor=\"middle\">${project.folderName}/screenshot.png</text><text x=\"50%\" y=\"55%\" fill=\"%2364748b\" font-family=\"monospace\" font-size=\"11\" text-anchor=\"middle\">Mobile Native Viewport</text></svg>';",
                              },
                            ),
                          ],
                        ),

                        // Bottom Home Indicator
                        div(
                          classes:
                              'absolute bottom-2 left-1/2 -translate-x-1/2 w-24 h-1 bg-white/40 rounded-full z-20',
                          [],
                        ),
                      ],
                    ),

                    // Carousel Controls (if multiple images)
                    if (images.length > 1)
                      div(classes: 'flex items-center gap-4 mt-4', [
                        button(
                          events: {
                            'click': (_) {
                              setState(() {
                                _activeImageIndex = (_activeImageIndex - 1 + images.length) % images.length;
                              });
                            }
                          },
                          classes:
                              'px-3 py-1 rounded-lg bg-slate-800 hover:bg-slate-700 text-slate-300 text-xs font-mono cursor-pointer border border-slate-700',
                          [text('← Prev')],
                        ),
                        span(
                          classes: 'text-xs font-mono text-slate-400',
                          [text('${_activeImageIndex + 1} / ${images.length}')],
                        ),
                        button(
                          events: {
                            'click': (_) {
                              setState(() {
                                _activeImageIndex = (_activeImageIndex + 1) % images.length;
                              });
                            }
                          },
                          classes:
                              'px-3 py-1 rounded-lg bg-slate-800 hover:bg-slate-700 text-slate-300 text-xs font-mono cursor-pointer border border-slate-700',
                          [text('Next →')],
                        ),
                      ]),
                  ],
                ),

                // Right Column: Architectural Deep Dive & Links (7 cols)
                div(classes: 'md:col-span-7 flex flex-col gap-5 text-left', [
                  // Category & Tagline
                  div(classes: 'flex flex-col gap-1', [
                    span(
                      classes:
                          'text-xs font-mono uppercase tracking-wider text-sky-400 font-bold',
                      [text(project.category.label)],
                    ),
                    h4(
                      classes: 'text-xl font-bold text-slate-100',
                      [text(project.tagLine)],
                    ),
                  ]),

                  // Description
                  p(
                    classes: 'text-sm text-slate-300 leading-relaxed',
                    [text(project.description)],
                  ),

                  // Architecture Flow Diagram Box
                  div(
                    classes:
                        'p-4 rounded-xl bg-slate-900/90 border border-sky-500/30 flex flex-col gap-2',
                    [
                      div(
                        classes:
                            'text-xs font-mono font-bold text-sky-400 flex items-center justify-between',
                        [
                          text('ARCHITECTURAL DATA FLOW'),
                          span(classes: 'text-emerald-400', [text('● Single Source of Truth')]),
                        ],
                      ),
                      p(
                        classes:
                            'text-xs font-mono text-slate-300 leading-relaxed bg-slate-950 p-2.5 rounded border border-slate-800',
                        [text(project.architectureFlow)],
                      ),
                    ],
                  ),

                  // Key Metrics Table
                  if (project.architectureMetrics.isNotEmpty)
                    div(
                      classes:
                          'grid grid-cols-2 gap-2 p-3 rounded-xl bg-slate-900/60 border border-slate-800',
                      project.architectureMetrics.entries.map((entry) {
                        return div(classes: 'flex flex-col', [
                          span(
                            classes: 'text-[10px] font-mono text-slate-400 uppercase',
                            [text(entry.key)],
                          ),
                          span(
                            classes: 'text-xs font-mono font-bold text-slate-200 mt-0.5',
                            [text(entry.value)],
                          ),
                        ]);
                      }).toList(),
                    ),

                  // Tech Stack Badges
                  div(classes: 'flex flex-col gap-2', [
                    span(
                      classes: 'text-xs font-mono font-bold text-slate-400 uppercase tracking-wider',
                      [text('ENGINEERING STACK')],
                    ),
                    div(
                      classes: 'flex flex-wrap gap-2',
                      project.techStack.map((tech) {
                        return span(
                          classes:
                              'px-2.5 py-1 rounded-md text-xs font-mono font-medium bg-slate-900 text-sky-300 border border-slate-800 shadow-sm',
                          [text(tech)],
                        );
                      }).toList(),
                    ),
                  ]),

                  // External Links (Play Store / GitHub / Web)
                  div(
                    classes: 'flex flex-wrap gap-3 pt-3 border-t border-slate-800/80',
                    [
                      if (project.playStoreUrl != null)
                        a(
                          href: project.playStoreUrl!,
                          target: Target.blank,
                          classes:
                              'px-4 py-2 rounded-xl text-xs font-semibold bg-emerald-500/10 hover:bg-emerald-500/20 text-emerald-400 border border-emerald-500/30 transition-all flex items-center gap-1.5 text-decoration-none',
                          [
                            span(classes: 'text-xs', [text('▶')]),
                            text('Google Play Store'),
                          ],
                        ),
                      if (project.liveDemoUrl != null)
                        a(
                          href: project.liveDemoUrl!,
                          target: Target.blank,
                          classes:
                              'px-4 py-2 rounded-xl text-xs font-semibold bg-sky-500/10 hover:bg-sky-500/20 text-sky-400 border border-sky-500/30 transition-all flex items-center gap-1.5 text-decoration-none',
                          [
                            span(classes: 'text-xs', [text('🌐')]),
                            text('Live Web App'),
                          ],
                        ),
                      if (project.githubUrl != null)
                        a(
                          href: project.githubUrl!,
                          target: Target.blank,
                          classes:
                              'px-4 py-2 rounded-xl text-xs font-semibold bg-slate-800 hover:bg-slate-700 text-slate-200 border border-slate-700 transition-all flex items-center gap-1.5 text-decoration-none',
                          [
                            span(classes: 'text-xs', [text('🐙')]),
                            text('GitHub Source'),
                          ],
                        ),
                    ],
                  ),
                ]),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
