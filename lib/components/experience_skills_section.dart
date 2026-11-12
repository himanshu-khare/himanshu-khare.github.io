import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/experience_model.dart';

class ExperienceSkillsSection extends StatelessComponent {
  const ExperienceSkillsSection({super.key});

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
          // EXPERIENCE TABLE LIST (FULL INLINE DELIVERABLES)
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

            // Clean inline experience list with full impact and deliverables
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
      ],
    );
  }

  Component _buildExperienceRow(ExperienceItem exp) {
    return div(
      classes: 'py-8 border-b border-white/[0.06] flex flex-col gap-3 group',
      [
        div(
          classes:
              'flex flex-col sm:flex-row sm:items-baseline justify-between gap-1.5',
          [
            div(
              classes:
                  'flex flex-col sm:flex-row sm:items-baseline gap-1 sm:gap-3',
              [
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
              ],
            ),
            span(
              classes: 'text-xs font-mono text-[#71717A]',
              [text(exp.dates)],
            ),
          ],
        ),

        // Full Impact & Deliverables inline inside company
        div(
          classes: 'flex flex-col gap-2 mt-1',
          exp.bullets.map((bullet) {
            return div(classes: 'flex items-start gap-2.5', [
              span(
                classes:
                    'text-[#3B82F6] font-mono text-xs select-none shrink-0 mt-0.5',
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
    );
  }
}
