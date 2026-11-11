import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/experience_model.dart';

class ExperienceSkillsSection extends StatelessComponent {
  const ExperienceSkillsSection({super.key});

  static const List<ExperienceItem> _experiences = [
    ExperienceItem(
      company: 'AsInt Inc.',
      role: 'Senior Mobile Developer',
      dates: 'Jan 2024 – Present',
      description:
          'Solo architect for 2 live Play Store apps (AsInt IntelliSuite & AsInt Edge). Offline-First SSOT with Drift (SQLite) + Riverpod; Server-Driven Dynamic Forms; background Dart Isolates; Bluetooth Wireless UT hardware bridge via Pigeon and Kotlin Coroutines.',
    ),
    ExperienceItem(
      company: 'StockyDodo',
      role: 'Asst. Engineer Manager - Flutter',
      dates: 'Aug 2023 – Nov 2023',
      description:
          'Delivered core features across Flutter Mobile & Web for Real-Money Gaming platform. Revamped authentication flows, nested deep-link notification routing, and MoEngage analytics pipelines.',
    ),
    ExperienceItem(
      company: 'Finoux Solutions (Motilal Oswal)',
      role: 'Flutter Developer',
      dates: 'Jan 2023 – Jul 2023',
      description:
          'Architected and revamped 29 core trading modules with unified light-theme design system, BLoC state machines, low-latency binary Protocol Buffers (Protobuf) streams, and multi-environment flavours.',
    ),
    ExperienceItem(
      company: 'MindfulMachine Pvt. Ltd.',
      role: 'Mobile Application Developer',
      dates: 'Mar 2020 – Dec 2022',
      description:
          'Shipped 25+ commercial apps across Flutter, Android, iOS. Built full-stack Smart Parking IoT app with Node.js/TypeScript/MongoDB, audio podcast streaming with AWS Cognito, and ConnectyCube WebRTC chat.',
    ),
  ];

  static const Map<String, List<String>> _skillGroups = {
    'Mobile & Core': [
      'Flutter (Android, iOS, Web)',
      'Dart',
      'Native Android (Kotlin)',
      'Native iOS (Swift)',
      'Java',
      'TypeScript',
      'Jaspr (Dart Web)',
    ],
    'Architecture & Data': [
      'Clean Architecture',
      'Offline-First (SSOT)',
      'Riverpod',
      'BLoC Pattern',
      'Drift (SQLite)',
      'Protocol Buffers (Protobuf)',
      'Dart Isolates',
    ],
    'Native Integration': [
      'Pigeon Type-Safe IPC',
      'MethodChannel & EventChannel',
      'Kotlin Coroutines (Dispatchers.IO)',
      'Android WorkManager',
      'Bluetooth LE Hardware SDKs',
    ],
    'Backend & Cloud': [
      'Supabase',
      'SAP BTP Sync',
      'AWS Cognito & Amplify',
      'Firebase',
      'Node.js & MongoDB',
      'WebSockets & REST',
      'CI/CD Pipelines',
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
          // EXPERIENCE TABLE LIST
          // ----------------------------------------------------
          div(classes: 'flex flex-col gap-8', [
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

            // Clean 4-row minimal list
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

          // Education Line
          div(
            classes:
                'pt-8 border-t border-white/[0.08] flex flex-col sm:flex-row justify-between sm:items-center gap-2 text-xs text-[#71717A] font-mono',
            [
              div([
                strong(classes: 'text-[#A1A1AA] font-medium', [text('Education: ')]),
                text('B.Sc. (Hons.) in Computer Science — Dyal Singh College, University of Delhi'),
              ]),
              span([text('2017 – 2020')]),
            ],
          ),
        ]),
      ],
    );
  }

  Component _buildExperienceRow(ExperienceItem exp) {
    return div(
      classes:
          'py-6 border-b border-white/[0.06] flex flex-col gap-2 group transition-colors',
      [
        div(
          classes:
              'flex flex-col sm:flex-row sm:items-center justify-between gap-1',
          [
            div(classes: 'flex flex-col sm:flex-row sm:items-center gap-1 sm:gap-3', [
              span(
                classes:
                    'text-base font-semibold text-[#F4F4F5] group-hover:text-white transition-colors',
                [text(exp.company)],
              ),
              span(classes: 'hidden sm:inline text-[#71717A]', [text('—')]),
              span(
                classes: 'text-sm font-medium text-[#A1A1AA]',
                [text(exp.role)],
              ),
            ]),
            span(
              classes: 'text-xs font-mono text-[#71717A]',
              [text(exp.dates)],
            ),
          ],
        ),
        p(
          classes: 'text-xs sm:text-[13px] text-[#71717A] leading-relaxed max-w-3xl mt-1',
          [text(exp.description)],
        ),
      ],
    );
  }
}

