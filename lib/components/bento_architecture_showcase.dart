import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/project_model.dart';
import '../services/firebase_portfolio_service.dart';

class BentoArchitectureShowcase extends StatefulComponent {
  final Function(ProjectModel) onInspectProject;

  const BentoArchitectureShowcase({required this.onInspectProject, super.key});

  @override
  State<BentoArchitectureShowcase> createState() =>
      _BentoArchitectureShowcaseState();
}

class _BentoArchitectureShowcaseState extends State<BentoArchitectureShowcase> {
  // Track X-Ray flip state for each card by ID
  final Map<String, bool> _xrayState = {
    'asint-enterprise': false,
    'tawft-ui-kit': false,
    'motilal-oswal': false,
    'stockydodo': false,
  };

  void _toggleXRay(String id) {
    setState(() {
      _xrayState[id] = !(_xrayState[id] ?? false);
    });
  }

  @override
  Component build(BuildContext context) {
    final flagships = FirebasePortfolioService.getFlagshipProjects();
    final asint = flagships.firstWhere((p) => p.id == 'asint-enterprise');
    final tawft = flagships.firstWhere((p) => p.id == 'tawft-ui-kit');
    final motilal = flagships.firstWhere((p) => p.id == 'motilal-oswal');
    final stocky = flagships.firstWhere((p) => p.id == 'stockydodo');

    return section(
      id: 'architecture',
      classes: 'py-24 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto w-full relative',
      [
        // Section Header
        div(classes: 'flex flex-col items-center text-center mb-16', [
          div(
            classes:
                'inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-mono font-semibold bg-sky-500/10 text-sky-400 border border-sky-500/20 mb-3',
            [
              span(classes: 'text-sky-400', [text('⚙️')]),
              text('CORE FLAGSHIP ARCHITECTURE'),
            ],
          ),
          h2(
            classes:
                'text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-100 tracking-tight',
            [
              text('Architecture '),
              span(classes: 'text-gradient-cyan', [text('X-Ray Showcase')]),
            ],
          ),
          p(
            classes:
                'mt-3 text-slate-400 text-sm sm:text-base max-w-2xl leading-relaxed',
            [
              text(
                'Toggle ',
              ),
              strong(classes: 'text-sky-400 font-mono', [text('[Architecture X-Ray] ')]),
              text(
                'on any product card to peel back the polished UI and inspect the real-world distributed state machines, Dart Isolates, binary Protobuf protocols, and offline SSOT pipelines.',
              ),
            ],
          ),
        ]),

        // Bento Grid Layout
        div(
          classes: 'grid grid-cols-1 lg:grid-cols-12 gap-8',
          [
            // ----------------------------------------------------
            // CARD 1: ASINT INTELLISUITE (HERO BENTO CARD - 12 cols or 7 cols)
            // ----------------------------------------------------
            div(
              classes: 'lg:col-span-7',
              [_buildBentoCard(asint, isLarge: true)],
            ),

            // ----------------------------------------------------
            // CARD 2: TAWFT UI KIT (5 cols)
            // ----------------------------------------------------
            div(
              classes: 'lg:col-span-5',
              [_buildBentoCard(tawft, isLarge: false)],
            ),

            // ----------------------------------------------------
            // CARD 3: MOTILAL OSWAL TRADER (5 cols)
            // ----------------------------------------------------
            div(
              classes: 'lg:col-span-5',
              [_buildBentoCard(motilal, isLarge: false)],
            ),

            // ----------------------------------------------------
            // CARD 4: STOCKYDODO (7 cols)
            // ----------------------------------------------------
            div(
              classes: 'lg:col-span-7',
              [_buildBentoCard(stocky, isLarge: true)],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildBentoCard(ProjectModel project, {required bool isLarge}) {
    final isXRay = _xrayState[project.id] ?? false;

    return div(
      classes: 'xray-container',
      [
        div(
          classes: 'xray-inner ${isXRay ? 'xray-flipped' : ''}',
          [
            // ==========================================
            // FRONT FACE: UI PREVIEW MODE
            // ==========================================
            div(
              classes:
                  'xray-front glass-card p-6 sm:p-8 flex flex-col justify-between border border-slate-800 hover:border-slate-700/80',
              [
                // Top Row: Category + X-Ray Toggle Button
                div(
                  classes: 'flex items-center justify-between gap-4 mb-4',
                  [
                    div(classes: 'flex items-center gap-2', [
                      span(
                        classes:
                            'px-2.5 py-1 rounded-md text-[11px] font-mono font-semibold uppercase tracking-wider bg-slate-800/90 text-sky-400 border border-slate-700',
                        [text(project.category.label)],
                      ),
                      if (project.isFlagship)
                        span(
                          classes:
                              'px-2 py-0.5 rounded text-[10px] font-mono font-bold bg-amber-500/10 text-amber-400 border border-amber-500/20',
                          [text('FLAGSHIP')],
                        ),
                    ]),

                    // X-Ray Mode Toggle Button
                    button(
                      events: {'click': (_) => _toggleXRay(project.id)},
                      classes:
                          'px-3 py-1.5 rounded-lg text-xs font-mono font-bold bg-sky-500/10 hover:bg-sky-500/20 text-sky-400 border border-sky-500/30 transition-all flex items-center gap-1.5 cursor-pointer shadow-sm hover:shadow-sky-500/20',
                      [
                        span(classes: 'text-xs', [text('⚡')]),
                        text('X-Ray Mode'),
                      ],
                    ),
                  ],
                ),

                // Main Info
                div(classes: 'flex flex-col gap-2 my-auto', [
                  h3(
                    classes:
                        'text-xl sm:text-2xl font-bold text-slate-100 hover:text-sky-400 transition-colors',
                    [text(project.title)],
                  ),
                  span(
                    classes: 'text-xs font-mono text-sky-400 font-semibold',
                    [text(project.tagLine)],
                  ),
                  p(
                    classes:
                        'text-slate-300 text-xs sm:text-sm leading-relaxed mt-2 line-clamp-3 sm:line-clamp-4',
                    [text(project.description)],
                  ),
                ]),

                // Key Architecture Metrics Pills
                div(
                  classes:
                      'grid grid-cols-2 sm:grid-cols-4 gap-2 my-4 pt-3 border-t border-slate-800/80',
                  project.architectureMetrics.entries.map((entry) {
                    return div(
                      classes:
                          'p-2 rounded-lg bg-slate-900/80 border border-slate-800/80 flex flex-col',
                      [
                        span(
                          classes:
                              'text-[10px] font-mono text-slate-400 uppercase tracking-wider truncate',
                          [text(entry.key)],
                        ),
                        span(
                          classes:
                              'text-xs font-mono font-bold text-slate-200 mt-0.5 truncate',
                          [text(entry.value)],
                        ),
                      ],
                    );
                  }).toList(),
                ),

                // Bottom: Tech Stack & Inspect Action
                div(
                  classes:
                      'flex flex-wrap items-center justify-between gap-4 pt-3 border-t border-slate-800/60',
                  [
                    div(
                      classes: 'flex flex-wrap gap-1.5 max-w-[70%]',
                      project.techStack.take(5).map((tech) {
                        return span(
                          classes:
                              'px-2 py-0.5 rounded text-[10px] font-mono bg-slate-900 text-slate-300 border border-slate-800',
                          [text(tech)],
                        );
                      }).toList(),
                    ),
                    button(
                      events: {
                        'click': (_) => component.onInspectProject(project)
                      },
                      classes:
                          'text-xs font-bold text-sky-400 hover:text-sky-300 flex items-center gap-1 cursor-pointer bg-transparent border-none p-0',
                      [
                        text('Inspect Specs'),
                        span(classes: 'font-mono', [text('→')]),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            // ==========================================
            // BACK FACE: ARCHITECTURE X-RAY MODE
            // ==========================================
            div(
              classes:
                  'xray-back p-6 sm:p-8 flex flex-col justify-between circuit-pattern relative overflow-hidden',
              [
                // Top Row: X-Ray Active Header + Exit Button
                div(
                  classes: 'flex items-center justify-between gap-4 mb-3 z-10',
                  [
                    div(classes: 'flex items-center gap-2', [
                      span(
                        classes:
                            'w-2 h-2 rounded-full bg-sky-400 ping-dot',
                        [],
                      ),
                      span(
                        classes:
                            'text-xs font-mono font-bold uppercase tracking-widest text-sky-400',
                        [text('INTERNAL SYSTEM SCHEMATIC')],
                      ),
                    ]),

                    button(
                      events: {'click': (_) => _toggleXRay(project.id)},
                      classes:
                          'px-3 py-1.5 rounded-lg text-xs font-mono font-bold bg-slate-800 hover:bg-slate-700 text-slate-200 border border-slate-700 transition-all flex items-center gap-1 cursor-pointer',
                      [
                        text('Back to UI'),
                        span(classes: 'text-xs', [text('↩')]),
                      ],
                    ),
                  ],
                ),

                // Centerpiece: Visual Pipeline Nodes
                div(
                  classes:
                      'flex flex-col gap-3 my-auto z-10 bg-slate-950/80 p-4 rounded-xl border border-sky-500/20 backdrop-blur-md',
                  [
                    div(
                      classes:
                          'flex items-center justify-between text-xs font-mono text-slate-400 border-b border-slate-800 pb-1.5',
                      [
                        text('DATA PIPELINE & CONCURRENCY FLOW'),
                        span(classes: 'text-emerald-400', [text('● Verified 60 FPS')]),
                      ],
                    ),
                    p(
                      classes:
                          'text-xs font-mono text-sky-300 leading-relaxed bg-slate-900/90 p-3 rounded-lg border border-slate-800',
                      [text(project.architectureFlow)],
                    ),
                    div(
                      classes:
                          'grid grid-cols-2 gap-2 text-[11px] font-mono text-slate-300 pt-1',
                      [
                        div(classes: 'flex items-center gap-1.5', [
                          span(classes: 'text-sky-400', [text('✦')]),
                          text('State: Riverpod / BLoC'),
                        ]),
                        div(classes: 'flex items-center gap-1.5', [
                          span(classes: 'text-indigo-400', [text('✦')]),
                          text('Storage: Drift (SQLite)'),
                        ]),
                        div(classes: 'flex items-center gap-1.5', [
                          span(classes: 'text-emerald-400', [text('✦')]),
                          text('Isolates: Worker Pool'),
                        ]),
                        div(classes: 'flex items-center gap-1.5', [
                          span(classes: 'text-amber-400', [text('✦')]),
                          text('Sync: SAP BTP / WebSockets'),
                        ]),
                      ],
                    ),
                  ],
                ),

                // Bottom: Deep Dive Callout
                div(
                  classes:
                      'flex items-center justify-between gap-4 pt-3 border-t border-slate-800/80 z-10 text-xs font-mono text-slate-400',
                  [
                    span(classes: 'truncate', [
                      text('Target: Mobile Enterprise Production'),
                    ]),
                    button(
                      events: {
                        'click': (_) => component.onInspectProject(project)
                      },
                      classes:
                          'text-sky-400 hover:text-sky-300 font-bold flex items-center gap-1 bg-transparent border-none cursor-pointer p-0',
                      [
                        text('View Raw Specs'),
                        span(classes: 'text-xs', [text('↗')]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
