import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/skill_model.dart';

class SkillsMatrix extends StatelessComponent {
  const SkillsMatrix({super.key});

  static const List<SkillCategoryModel> _categories = [
    SkillCategoryModel(
      title: 'Languages & Core Runtimes',
      icon: '⚡',
      description: 'Typed systems languages and reactive runtimes',
      skills: ['Dart', 'Kotlin', 'Swift', 'Java', 'TypeScript'],
      levelBadge: 'Production Expert',
    ),
    SkillCategoryModel(
      title: 'Mobile & Web Platforms',
      icon: '📱',
      description: 'Cross-platform and native client frameworks',
      skills: [
        'Flutter (Android, iOS, Web)',
        'Jaspr (Dart Web)',
        'Native Android (Kotlin)',
        'Native iOS (Swift)',
      ],
      levelBadge: 'Architectural Mastery',
    ),
    SkillCategoryModel(
      title: 'Architecture & State Management',
      icon: '🏛️',
      description: 'Robust patterns for high-scale enterprise applications',
      skills: [
        'Clean Architecture',
        'Offline-First (SSOT)',
        'Riverpod',
        'BLoC Pattern',
        'GetX',
        'Server-Driven Dynamic UI',
        'Multi-Tenant Workspaces',
      ],
      levelBadge: 'Lead Architect',
    ),
    SkillCategoryModel(
      title: 'Data, Protocols & Concurrency',
      icon: '💾',
      description: 'Low-latency data serialization & multi-threading',
      skills: [
        'Drift (SQLite Engine)',
        'Protocol Buffers (Protobuf)',
        'Dart Isolates',
        'Supabase Realtime',
        'Firebase Firestore & Storage',
      ],
      levelBadge: 'High Concurrency',
    ),
    SkillCategoryModel(
      title: 'Native Hardware & SDK Bridges',
      icon: '🔌',
      description: 'Deep operating system hooks and BLE telemetry',
      skills: [
        'Pigeon Type-Safe IPC',
        'MethodChannel & EventChannel',
        'Kotlin Coroutines (Dispatchers.IO)',
        'Android WorkManager',
        'BLE / Ultrasonic Testing SDKs',
      ],
      levelBadge: 'Low-Level Interop',
    ),
    SkillCategoryModel(
      title: 'Cloud, DevOps & Tooling',
      icon: '☁️',
      description: 'Enterprise backend synchronization and delivery pipelines',
      skills: [
        'SAP BTP Sync',
        'AWS Cognito & Amplify',
        'Node.js & MongoDB',
        'WebSockets / REST',
        'CI/CD & App Flavours',
        'MoEngage & Razorpay',
      ],
      levelBadge: 'Production Scale',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'skills',
      classes: 'py-24 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto w-full relative',
      [
        // Section Header
        div(classes: 'flex flex-col items-center text-center mb-16', [
          div(
            classes:
                'inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-mono font-semibold bg-sky-500/10 text-sky-400 border border-sky-500/20 mb-3',
            [
              span(classes: 'text-sky-400', [text('🛠️')]),
              text('CORE CAPABILITY MATRIX'),
            ],
          ),
          h2(
            classes:
                'text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-100 tracking-tight',
            [
              text('Technical '),
              span(classes: 'text-gradient-blue', [text('Skills & Stack')]),
            ],
          ),
          p(
            classes:
                'mt-3 text-slate-400 text-sm sm:text-base max-w-2xl leading-relaxed',
            [
              text(
                'Comprehensive breakdown of production-tested frameworks, state machines, concurrency patterns, and native OS interop layers.',
              ),
            ],
          ),
        ]),

        // 6-Category Grid
        div(
          classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8',
          _categories.map((cat) => _buildCategoryCard(cat)).toList(),
        ),
      ],
    );
  }

  Component _buildCategoryCard(SkillCategoryModel cat) {
    return div(
      classes:
          'glass-card p-6 sm:p-7 rounded-2xl border border-slate-800/80 hover:border-sky-500/40 transition-all duration-300 flex flex-col justify-between group text-left',
      [
        div(classes: 'flex flex-col gap-3', [
          // Icon + Level Badge
          div(classes: 'flex items-center justify-between', [
            div(
              classes:
                  'w-10 h-10 rounded-xl bg-slate-800/90 border border-slate-700/80 flex items-center justify-center text-xl shadow-sm group-hover:scale-105 transition-transform',
              [text(cat.icon)],
            ),
            span(
              classes:
                  'px-2.5 py-0.5 rounded-full text-[10px] font-mono font-semibold bg-sky-500/10 text-sky-400 border border-sky-500/20',
              [text(cat.levelBadge)],
            ),
          ]),

          // Title & Description
          div(classes: 'flex flex-col gap-1 mt-1', [
            h3(
              classes:
                  'text-lg font-bold text-slate-100 group-hover:text-sky-400 transition-colors',
              [text(cat.title)],
            ),
            p(
              classes: 'text-xs text-slate-400 leading-relaxed font-normal',
              [text(cat.description)],
            ),
          ]),
        ]),

        // Skills Pill List
        div(
          classes: 'flex flex-wrap gap-2 pt-6 mt-4 border-t border-slate-800/80',
          cat.skills.map((skill) {
            return span(
              classes:
                  'px-3 py-1 rounded-lg text-xs font-mono font-medium bg-slate-900/90 text-slate-200 border border-slate-800 hover:border-sky-500/30 hover:text-sky-300 transition-all',
              [text(skill)],
            );
          }).toList(),
        ),
      ],
    );
  }
}
