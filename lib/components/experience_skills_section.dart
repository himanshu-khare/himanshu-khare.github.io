import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/experience_model.dart';

class ExperienceSkillsSection extends StatefulComponent {
  const ExperienceSkillsSection({super.key});

  @override
  State<ExperienceSkillsSection> createState() =>
      _ExperienceSkillsSectionState();
}

class _ExperienceSkillsSectionState extends State<ExperienceSkillsSection> {
  ExperienceItem? _selectedExperience;

  void _openModal(ExperienceItem exp) {
    setState(() {
      _selectedExperience = exp;
    });
  }

  void _closeModal() {
    setState(() {
      _selectedExperience = null;
    });
  }

  static const List<ExperienceItem> _experiences = [
    ExperienceItem(
      company: 'AsInt Inc.',
      role: 'Mobile Application Developer (Solo Mobile Architect)',
      dates: 'Jan 2024 – Present',
      description:
          'Independently architected from scratch and maintain 2 live Play Store enterprise apps (AsInt IntelliSuite & AsInt Edge), owning end-to-end Clean Architecture and releases.',
      bullets: [
        'Independently architected from scratch and maintain 2 live Play Store enterprise apps (AsInt IntelliSuite & AsInt Edge), owning end-to-end Clean Architecture and releases.',
        'Designed an Offline-First Single Source of Truth (SSOT) data layer with Drift (SQLite) and Riverpod for instant local reads and atomic background sync with SAP BTP.',
        'Built a Server-Driven Dynamic Form & UI Engine, multi-tenant workspaces, and CML workflows, offloading large JSON parsing to Dart Isolates for smooth UI performance.',
        'Integrated AI damage detection, CAD drawing, and U1 data scraping; bridged Bluetooth Wireless Ultrasonic Testing (UT) hardware via Pigeon, Method/EventChannel, and Kotlin Coroutines.',
      ],
    ),
    ExperienceItem(
      company: 'StockyDodo',
      role: 'Asst. Engineer Manager - Flutter',
      dates: 'Aug 2023 – Nov 2023',
      description:
          'Delivered core features across Flutter Mobile and Web for a Real-Money Gaming (RMG) financial platform, resolving 36+ critical feature and production tickets.',
      bullets: [
        'Delivered core features across Flutter Mobile and Web for a Real-Money Gaming (RMG) financial platform, resolving 36+ critical feature and production tickets.',
        'Revamped authentication and registration flows, nested deep-link notification routing, and MoEngage analytics pipelines.',
      ],
    ),
    ExperienceItem(
      company: 'Finoux Solutions Pvt. Ltd.',
      role: 'Flutter Developer',
      dates: 'Jan 2023 – Jul 2023',
      description:
          'Architected and revamped 29 core trading modules for the Motilal Oswal Stock Broking trader app, delivering a unified light-theme design system for equity and derivatives.',
      bullets: [
        'Architected and revamped 29 core trading modules for the Motilal Oswal Stock Broking trader app, delivering a unified light-theme design system for equity and derivatives.',
        'Implemented BLoC state management, integrated Protocol Buffers (Protobuf) for low-latency binary market streams, and configured multi-environment Flutter App Flavours.',
      ],
    ),
    ExperienceItem(
      company: 'MindfulMachine Pvt. Ltd.',
      role: 'Mobile Application Developer',
      dates: 'Mar 2020 – Dec 2022',
      description:
          'Owned end-to-end delivery from Figma/XD prototyping to Play Store & App Store release across Flutter, Native Android, and iOS for international client applications.',
      bullets: [
        'Owned end-to-end delivery from Figma/XD prototyping to Play Store & App Store release across Flutter, Native Android, and iOS for international client applications.',
        'Built a full-stack smart Parking App (Flutter client with Node.js, TypeScript & MongoDB backend) alongside an on-demand Audio Podcast streaming application.',
        'Integrated AWS Cognito (Amplify) social logins, Razorpay payments, Google Maps geolocation, real-time video/chat via ConnectyCube, and REST / WebSocket APIs.',
      ],
    ),
  ];

  static const Map<String, List<String>> _skillGroups = {
    'Languages & Web': [
      'Dart',
      'Kotlin',
      'Swift',
      'Java',
      'TypeScript',
      'JavaScript',
      'Jaspr (Jasper)',
    ],
    'Mobile & UI': [
      'Flutter (Android, iOS, Web)',
      'Native Android (Kotlin, Gradle)',
      'iOS (Swift, CocoaPods) Integration',
      '100+ UI Widgets',
    ],
    'Architecture & State': [
      'Clean Architecture',
      'Riverpod',
      'BLoC',
      'GetX',
      'Offline-First (SSOT)',
      'Multi-Tenant',
      'Server-Driven UI',
    ],
    'Data & Native Bridge': [
      'Drift (SQLite)',
      'Protobuf',
      'Dart Isolates',
      'Pigeon',
      'MethodChannel',
      'EventChannel',
      'Kotlin Coroutines',
    ],
    'Cloud & Delivery': [
      'Supabase',
      'SAP BTP Sync',
      'AWS Cognito',
      'Firebase',
      'Node.js',
      'MongoDB',
      'REST',
      'WebSockets',
      'CI/CD',
      'Git',
    ],
  };

  @override
  Component build(BuildContext context) {
    return section(
      id: 'experience',
      classes: 'py-24 border-b border-white/[0.06] text-left',
      [
        div(classes: 'site-container flex flex-col gap-20', [
          // ----------------------------------------------------
          // EXPERIENCE TABLE LIST (CLICKABLE ROWS)
          // ----------------------------------------------------
          div(classes: 'flex flex-col gap-8', [
            div(
              classes:
                  'flex flex-col sm:flex-row sm:items-end justify-between gap-4',
              [
                div(classes: 'flex flex-col gap-2', [
                  span(
                    classes:
                        'text-xs font-mono font-medium tracking-wider text-[#71717A] uppercase',
                    [text('Career History')],
                  ),
                  h2(
                    classes:
                        'text-2xl sm:text-3xl font-semibold text-[#F4F4F5] tracking-tight',
                    [text('Work Experience')],
                  ),
                ]),
                span(
                  classes: 'text-xs font-mono text-[#71717A]',
                  [text('Click role for full impact & deliverables ↗')],
                ),
              ],
            ),

            // Clean 4-row minimal clickable list
            div(
              classes: 'flex flex-col border-t border-white/[0.08]',
              _experiences.map((exp) => _buildExperienceRow(exp)).toList(),
            ),
          ]),

          // ----------------------------------------------------
          // SKILLS GRID (4 QUIET GROUPS)
          // ----------------------------------------------------
          div(classes: 'flex flex-col gap-8', [
            div(classes: 'flex flex-col gap-2', [
              span(
                classes:
                    'text-xs font-mono font-medium tracking-wider text-[#71717A] uppercase',
                [text('Technical Competencies')],
              ),
              h2(
                classes:
                    'text-2xl sm:text-3xl font-semibold text-[#F4F4F5] tracking-tight',
                [text('Skills & Technologies')],
              ),
            ]),

            div(
              classes: 'grid grid-cols-1 sm:grid-cols-2 gap-8',
              _skillGroups.entries.map((group) {
                return div(classes: 'flex flex-col gap-3', [
                  h4(
                    classes:
                        'text-xs font-mono font-semibold uppercase tracking-wider text-[#A1A1AA]',
                    [text(group.key)],
                  ),
                  div(
                    classes: 'flex flex-wrap gap-2',
                    group.value.map((skill) {
                      return span(
                        classes:
                            'px-2.5 py-1 rounded text-xs font-mono bg-[#141416] text-[#D4D4D8] border border-white/[0.06]',
                        [text(skill)],
                      );
                    }).toList(),
                  ),
                ]);
              }).toList(),
            ),
          ]),
        ]),

        // Experience Detail Dialog Modal
        if (_selectedExperience != null) _renderExperienceModal(),
      ],
    );
  }

  Component _buildExperienceRow(ExperienceItem exp) {
    return div(
      events: {'click': (_) => _openModal(exp)},
      classes:
          'py-4 sm:py-5 px-3 sm:px-4 -mx-3 sm:-mx-4 rounded-xl border-b border-white/[0.06] hover:bg-white/[0.03] transition-all cursor-pointer group flex items-center justify-between gap-4',
      [
        div(
          classes:
              'flex flex-col sm:flex-row sm:items-center gap-1 sm:gap-3 min-w-0',
          [
            span(
              classes:
                  'text-sm sm:text-base font-semibold text-[#F4F4F5] group-hover:text-white transition-colors truncate',
              [text(exp.company)],
            ),
            span(classes: 'hidden sm:inline text-[#71717A]', [text('—')]),
            span(
              classes:
                  'text-xs sm:text-sm font-medium text-[#A1A1AA] group-hover:text-[#D4D4D8] transition-colors truncate',
              [text(exp.role)],
            ),
          ],
        ),
        div(classes: 'flex items-center gap-3 shrink-0', [
          span(
            classes:
                'text-xs font-mono text-[#71717A] group-hover:text-[#A1A1AA] transition-colors whitespace-nowrap',
            [text(exp.dates)],
          ),
          span(
            classes:
                'text-[11px] font-mono px-2 py-0.5 rounded text-[#71717A] group-hover:text-[#F4F4F5] bg-white/[0.03] group-hover:bg-white/[0.08] border border-white/[0.04] group-hover:border-white/[0.12] transition-all flex items-center gap-1',
            [text('View ↗')],
          ),
        ]),
      ],
    );
  }

  Component _renderExperienceModal() {
    final exp = _selectedExperience!;

    return div(
      classes: 'lightbox-backdrop',
      [
        // Backdrop overlay: click to dismiss
        div(
          classes: 'modal-overlay',
          events: {'click': (_) => _closeModal()},
          [],
        ),

        // Dialog Content Container
        div(
          classes: 'modal-content-dialog',
          [
            // Header
            div(
              classes:
                  'px-6 py-5 bg-[#141416] border-b border-white/[0.08] flex items-start justify-between gap-4',
              [
                div(classes: 'flex flex-col gap-1.5', [
                  div(classes: 'flex items-center gap-2.5 flex-wrap', [
                    h3(
                      classes:
                          'text-base sm:text-lg font-semibold text-[#F4F4F5]',
                      [text(exp.company)],
                    ),
                    span(
                      classes:
                          'px-2 py-0.5 rounded-full text-[11px] font-mono text-[#A1A1AA] bg-white/[0.05] border border-white/[0.08]',
                      [text(exp.dates)],
                    ),
                  ]),
                  span(
                    classes: 'text-xs sm:text-sm font-medium text-[#A1A1AA]',
                    [text(exp.role)],
                  ),
                ]),
                button(
                  events: {'click': (_) => _closeModal()},
                  classes:
                      'w-7 h-7 rounded-full bg-[#1C1C1F] hover:bg-[#27272A] text-[#A1A1AA] hover:text-white flex items-center justify-center border border-white/[0.08] cursor-pointer text-xs font-mono shrink-0 transition-colors',
                  [text('✕')],
                ),
              ],
            ),

            // Body
            div(
              classes:
                  'p-6 overflow-y-auto max-h-[calc(85vh-140px)] flex flex-col gap-6 text-left',
              [
                // Overview
                div(classes: 'flex flex-col gap-2', [
                  span(
                    classes:
                        'text-[11px] font-mono uppercase tracking-wider text-[#71717A]',
                    [text('Role Summary')],
                  ),
                  p(
                    classes:
                        'text-xs sm:text-sm text-[#D4D4D8] leading-relaxed',
                    [text(exp.description)],
                  ),
                ]),

                // Key Architecture & Deliverables
                if (exp.bullets.isNotEmpty)
                  div(
                    classes:
                        'flex flex-col gap-3 pt-5 border-t border-white/[0.06]',
                    [
                      span(
                        classes:
                            'text-[11px] font-mono uppercase tracking-wider text-[#71717A]',
                        [text('Key Architecture & Deliverables')],
                      ),
                      div(
                        classes: 'flex flex-col gap-3',
                        exp.bullets.map((bullet) {
                          return div(classes: 'flex items-start gap-3', [
                            span(
                              classes:
                                  'text-[#3B82F6] font-mono text-sm leading-5 select-none shrink-0',
                              [text('▸')],
                            ),
                            p(
                              classes:
                                  'text-xs sm:text-[13px] text-[#A1A1AA] leading-relaxed',
                              [text(bullet)],
                            ),
                          ]);
                        }).toList(),
                      ),
                    ],
                  ),
              ],
            ),

            // Footer
            div(
              classes:
                  'px-6 py-3.5 bg-[#141416] border-t border-white/[0.08] flex items-center justify-between text-xs font-mono text-[#71717A]',
              [
                span([text('Himanshu Khare • Career History')]),
                button(
                  events: {'click': (_) => _closeModal()},
                  classes:
                      'px-3 py-1 rounded bg-white/[0.04] hover:bg-white/[0.08] text-[#D4D4D8] hover:text-white border border-white/[0.08] cursor-pointer text-xs font-mono transition-colors',
                  [text('Close')],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
