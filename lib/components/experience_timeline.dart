import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/experience_model.dart';

class ExperienceTimeline extends StatelessComponent {
  const ExperienceTimeline({super.key});

  static const List<ExperienceModel> _experiences = [
    ExperienceModel(
      period: 'Nov 2023 – Present',
      role: 'Senior Mobile Developer (Solo Architect)',
      company: 'AsInt Inc.',
      clientOrProduct: 'AsInt IntelliSuite & AsInt Edge',
      location: 'Noida / Delhi NCR, India',
      summary:
          'Independently architected, developed, and deployed two flagship enterprise industrial asset-integrity applications from scratch to Google Play Store production. Pioneered an offline-first Single Source of Truth architecture with bi-directional enterprise ERP synchronization.',
      keyAchievements: [
        'Architected an Offline-First SSOT system using Drift (SQLite) & Riverpod with atomic SAP BTP sync, ensuring 100% data integrity in remote zero-connectivity industrial facilities.',
        'Engineered a Server-Driven Dynamic Form Engine supporting multi-tenant workspace switching, complex CML inspection workflows, and customizable validation schemas.',
        'Spun up dedicated background Dart Isolates for heavy multi-MB JSON chunk parsing, eliminating main UI thread bottlenecks and locking smooth 60 FPS performance.',
        'Bridged native Bluetooth Wireless Ultrasonic Testing (UT) hardware gauges via Pigeon, MethodChannel, EventChannel, and Kotlin Coroutines (Dispatchers.IO).',
        'Implemented AI damage classification, CAD drawing markup overlays, and automated U1 engineering specification document scraping.',
      ],
      techStack: [
        'Flutter',
        'Drift (SQLite)',
        'Riverpod',
        'Dart Isolates',
        'Pigeon',
        'Kotlin Coroutines',
        'BLE Hardware',
        'SAP BTP',
      ],
      architectureBadge: 'Enterprise Offline SSOT',
    ),
    ExperienceModel(
      period: 'Aug 2023 – Nov 2023',
      role: 'Flutter Developer',
      company: 'StockyDodo',
      clientOrProduct: 'Real-Money Financial Gaming Platform',
      location: 'India',
      summary:
          'Spearheaded production-grade feature enhancements and performance optimizations for a high-concurrency real-money financial learning and gamified stock trading application.',
      keyAchievements: [
        'Shipped 36+ critical feature releases and zero-downtime production hotfixes within a fast-paced agile sprint cycle.',
        'Overhauled the entire player authentication flow, decreasing onboarding drop-offs and resolving token invalidation edge cases.',
        'Architected nested notification deep-linking routing, achieving 99.9% deep link resolution across Android and iOS intent filters.',
        'Integrated end-to-end MoEngage behavioral telemetry analytics to empower granular user engagement cohort tracking.',
      ],
      techStack: [
        'Flutter',
        'Riverpod / GetX',
        'MoEngage',
        'Branch Deep Linking',
        'Razorpay',
        'WebSockets',
      ],
      architectureBadge: 'High-Retention FinTech',
    ),
    ExperienceModel(
      period: 'Jan 2023 – Jul 2023',
      role: 'Flutter Developer',
      company: 'Finoux Solutions Pvt. Ltd.',
      clientOrProduct: 'Client: Motilal Oswal Financial Services',
      location: 'Mumbai / Remote, India',
      summary:
          'Modernized the flagship Motilal Oswal stock broking mobile application, transforming legacy architectures into clean, reactive, low-latency trading modules.',
      keyAchievements: [
        'Revamped 29 core stock-broking, equity, derivatives, and mutual funds modules with reactive state management and high-performance Slivers data tables.',
        'Integrated binary Protocol Buffers (Protobuf) serialization over WebSockets, dropping payload size by 72% and slashing tick-to-render latency to <15ms.',
        'Configured multi-environment App Flavours (Dev, QA, UAT, Production) with isolated bundle IDs, API endpoints, and CI/CD pipelines.',
        'Enforced a unified, modern light-theme trading design system adhering to strict accessibility and financial precision formatting.',
      ],
      techStack: [
        'Flutter',
        'BLoC State Machine',
        'Protocol Buffers (Protobuf)',
        'App Flavours',
        'Clean Architecture',
      ],
      architectureBadge: 'Binary Protobuf Trading',
    ),
    ExperienceModel(
      period: 'Mar 2020 – Dec 2022',
      role: 'Mobile Application Developer',
      company: 'MindfulMachine Pvt. Ltd.',
      clientOrProduct: '25+ Commercial Apps & Microservices',
      location: 'Delhi NCR, India',
      summary:
          'Core full-stack mobile developer delivering 25+ production mobile applications for international startups and enterprise clients across diverse domains.',
      keyAchievements: [
        'Delivered 25+ end-to-end commercial applications across Flutter, Native Android (Kotlin), and iOS (Swift), handling app store deployment lifecycle.',
        'Built a complete Smart Parking IoT ecosystem, engineering both the Flutter driver app and the Node.js / TypeScript / MongoDB backend with BLE barrier gate authorization.',
        'Architected a Blinkist-style audio learning platform featuring background playback with native notification controls, AWS Cognito authentication, and offline audio caching.',
        'Integrated peer-to-peer WebRTC video consultations and encrypted chat using ConnectyCube SDK for a high-availability telemedicine provider.',
      ],
      techStack: [
        'Flutter',
        'Native Android (Kotlin)',
        'Native iOS (Swift)',
        'Node.js',
        'TypeScript',
        'MongoDB',
        'AWS Cognito',
        'ConnectyCube',
      ],
      architectureBadge: '25+ Global Client Deliveries',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'experience',
      classes: 'py-24 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto w-full relative',
      [
        // Section Header
        div(classes: 'flex flex-col items-center text-center mb-16', [
          div(
            classes:
                'inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-mono font-semibold bg-emerald-500/10 text-emerald-400 border border-emerald-500/20 mb-3',
            [
              span(classes: 'text-emerald-400', [text('💼')]),
              text('TRACK RECORD & LEADERSHIP'),
            ],
          ),
          h2(
            classes:
                'text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-100 tracking-tight',
            [
              text('6.5+ Years of '),
              span(classes: 'text-gradient-cyan', [text('Mobile Mastery')]),
            ],
          ),
          p(
            classes:
                'mt-3 text-slate-400 text-sm sm:text-base max-w-2xl leading-relaxed',
            [
              text(
                'From solo architectural ownership of enterprise industrial suites to high-frequency trading revamp desks and 25+ global client applications.',
              ),
            ],
          ),
        ]),

        // Timeline Container
        div(
          classes: 'relative border-l-2 border-slate-800 ml-4 sm:ml-8 pl-6 sm:pl-10 space-y-12',
          _experiences.map((exp) => _buildTimelineItem(exp)).toList(),
        ),
      ],
    );
  }

  Component _buildTimelineItem(ExperienceModel exp) {
    return div(
      classes: 'relative group text-left',
      [
        // Glowing Timeline Dot
        div(
          classes:
              'absolute -left-[31px] sm:-left-[47px] top-1.5 w-4 h-4 rounded-full bg-slate-950 border-2 border-sky-400 group-hover:bg-sky-400 group-hover:shadow-[0_0_12px_rgba(56,189,248,0.8)] transition-all duration-300',
          [],
        ),

        // Timeline Card
        div(
          classes:
              'glass-card p-6 sm:p-8 rounded-2xl border border-slate-800/80 hover:border-sky-500/40 transition-all duration-300',
          [
            // Period + Badge
            div(
              classes:
                  'flex flex-wrap items-center justify-between gap-3 mb-2',
              [
                span(
                  classes:
                      'px-3 py-1 rounded-full text-xs font-mono font-bold bg-sky-500/10 text-sky-400 border border-sky-500/20',
                  [text(exp.period)],
                ),
                span(
                  classes:
                      'px-2.5 py-0.5 rounded text-[11px] font-mono font-semibold bg-indigo-500/10 text-indigo-300 border border-indigo-500/20',
                  [text(exp.architectureBadge)],
                ),
              ],
            ),

            // Role & Company
            h3(
              classes:
                  'text-xl sm:text-2xl font-bold text-slate-100 group-hover:text-sky-400 transition-colors',
              [text(exp.role)],
            ),
            div(
              classes:
                  'flex flex-wrap items-center gap-2 text-sm font-semibold text-slate-300 mt-1',
              [
                span(classes: 'text-sky-400', [text(exp.company)]),
                span(classes: 'text-slate-500', [text('•')]),
                span(classes: 'text-slate-400', [text(exp.clientOrProduct)]),
                span(classes: 'text-slate-500', [text('•')]),
                span(classes: 'text-xs font-mono text-slate-400', [text(exp.location)]),
              ],
            ),

            // Summary
            p(
              classes:
                  'text-sm text-slate-300 leading-relaxed mt-4 pb-4 border-b border-slate-800/80',
              [text(exp.summary)],
            ),

            // Key Achievements Bullet List
            ul(
              classes: 'mt-4 space-y-2.5 text-xs sm:text-sm text-slate-300 leading-relaxed',
              exp.keyAchievements.map((item) {
                return li(classes: 'flex items-start gap-2.5', [
                  span(
                    classes:
                        'text-sky-400 font-mono text-base leading-none select-none',
                    [text('▹')],
                  ),
                  span([text(item)]),
                ]);
              }).toList(),
            ),

            // Tech Stack Pills
            div(
              classes: 'flex flex-wrap gap-2 mt-6 pt-4 border-t border-slate-800/60',
              exp.techStack.map((tech) {
                return span(
                  classes:
                      'px-2.5 py-1 rounded-md text-xs font-mono font-medium bg-slate-900 text-slate-300 border border-slate-800',
                  [text(tech)],
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
