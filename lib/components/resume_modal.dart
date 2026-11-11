import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ResumeModal extends StatelessComponent {
  final VoidCallback onClose;

  const ResumeModal({required this.onClose, super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'modal-backdrop',
      events: {'click': (_) => onClose()},
      [
        div(
          classes:
              'modal-content w-full max-w-4xl max-h-[92vh] bg-slate-900 border border-slate-700/80 rounded-3xl shadow-2xl flex flex-col overflow-hidden text-left',
          events: {'click': (e) {}},
          [
            // Top Action Bar
            div(
              classes:
                  'px-6 py-4 bg-slate-950/90 border-b border-slate-800 flex items-center justify-between z-10 no-print',
              [
                div(classes: 'flex items-center gap-3', [
                  div(
                    classes:
                        'w-8 h-8 rounded-lg bg-sky-500/20 text-sky-400 flex items-center justify-center font-mono font-bold text-xs',
                    [text('CV')],
                  ),
                  span(
                    classes: 'text-sm font-bold text-slate-100 font-mono',
                    [text('Himanshu_Khare_Senior_Mobile_Architect.pdf')],
                  ),
                ]),

                div(classes: 'flex items-center gap-3', [
                  button(
                    events: {
                      'click': (_) {
                        // Native browser print dialog
                      }
                    },
                    classes:
                        'px-3 py-1.5 rounded-lg text-xs font-semibold bg-sky-500/10 hover:bg-sky-500/20 text-sky-400 border border-sky-500/30 transition-all flex items-center gap-1.5 cursor-pointer',
                    attributes: {'onclick': 'window.print();'},
                    [
                      span(classes: 'text-xs', [text('🖨️')]),
                      text('Print / Save PDF'),
                    ],
                  ),
                  a(
                    href: 'assets/himanshu_khare_resume.pdf',
                    download: 'Himanshu_Khare_Resume.pdf',
                    classes:
                        'px-3 py-1.5 rounded-lg text-xs font-semibold bg-slate-800 hover:bg-slate-700 text-slate-200 border border-slate-700 transition-all flex items-center gap-1.5 cursor-pointer text-decoration-none',
                    [
                      span(classes: 'text-xs', [text('⬇️')]),
                      text('Direct Download'),
                    ],
                  ),
                  button(
                    events: {'click': (_) => onClose()},
                    classes:
                        'w-8 h-8 rounded-full bg-slate-800 hover:bg-slate-700 text-slate-300 hover:text-white flex items-center justify-center border border-slate-700 cursor-pointer font-bold',
                    [text('✕')],
                  ),
                ]),
              ],
            ),

            // Scrollable Resume Paper
            div(
              classes:
                  'p-6 sm:p-10 overflow-y-auto flex-1 bg-slate-950 text-slate-200 space-y-8 font-sans',
              [
                // Resume Header
                div(
                  classes: 'border-b border-slate-800 pb-6',
                  [
                    h1(
                      classes: 'text-3xl font-extrabold text-white tracking-tight',
                      [text('Himanshu Khare')],
                    ),
                    p(
                      classes:
                          'text-sm sm:text-base font-semibold text-sky-400 mt-1',
                      [
                        text(
                          'Senior Mobile Developer | Flutter | Native Android (Kotlin) | iOS (Swift)',
                        ),
                      ],
                    ),
                    div(
                      classes:
                          'flex flex-wrap gap-x-4 gap-y-1 text-xs font-mono text-slate-400 mt-3',
                      [
                        span([text('📍 Ghaziabad / Delhi NCR, India')]),
                        span([text('✉ himanshukhare43071@gmail.com')]),
                        span([text('📞 +91 7042767608')]),
                        span([text('🌐 himanshu-khare.github.io')]),
                        span([text('📦 tawftapp.github.io')]),
                        span([text('🎙️ @appdevwithhimanshu')]),
                      ],
                    ),
                  ],
                ),

                // Professional Summary
                div(classes: 'space-y-2', [
                  h2(
                    classes:
                        'text-xs font-mono font-bold uppercase tracking-wider text-sky-400',
                    [text('Professional Summary')],
                  ),
                  p(
                    classes: 'text-xs sm:text-sm text-slate-300 leading-relaxed',
                    [
                      text(
                        'Senior Mobile Engineer with 6.5+ years of experience developing production applications across Flutter, Android, and iOS, spanning enterprise industrial systems, fintech/stock-broking platforms, and consumer apps. Independently architected, built, and maintained two enterprise asset-integrity applications from scratch (AsInt IntelliSuite and AsInt Edge), specializing in Offline-First Single Source of Truth (SSOT) architecture, server-driven dynamic UI engines, background Dart Isolates, and native Bluetooth/hardware bridges.',
                      ),
                    ],
                  ),
                ]),

                // Flagship Enterprise Products
                div(classes: 'space-y-3', [
                  h2(
                    classes:
                        'text-xs font-mono font-bold uppercase tracking-wider text-sky-400',
                    [text('Flagship Architectural Deliveries')],
                  ),
                  div(classes: 'space-y-3', [
                    _buildResumeProduct(
                      'AsInt IntelliSuite & AsInt Edge',
                      'Solo Senior Mobile Architect (AsInt Inc.)',
                      'Offline-First SSOT with Drift (SQLite) & Riverpod; atomic SAP BTP bi-directional sync; server-driven dynamic form engine; background Dart Isolates for multi-MB JSON parsing at 60 FPS; AI damage detection, CAD drawings, and native Bluetooth Ultrasonic Testing (UT) hardware integration via Pigeon and Kotlin Coroutines.',
                    ),
                    _buildResumeProduct(
                      'Tawft — Flutter & Jaspr UI Component Directory (tawftapp.github.io)',
                      'Architect & Creator',
                      'Built and published a curated developer platform and web directory featuring 100+ reusable Flutter UI widgets and interactive design patterns backed by Supabase.',
                    ),
                    _buildResumeProduct(
                      'Motilal Oswal Trader App Revamp',
                      'Finoux Solutions Pvt. Ltd.',
                      'Revamped 29 core stock-broking and derivatives trading modules with low-latency binary Protocol Buffers (Protobuf) data serialization and unified light-theme design system.',
                    ),
                    _buildResumeProduct(
                      'StockyDodo',
                      'Flutter Developer',
                      'Delivered 36+ critical feature and production releases, revamping authentication, nested notification deep-linking, and MoEngage analytics pipelines.',
                    ),
                  ]),
                ]),

                // Experience Timeline
                div(classes: 'space-y-4', [
                  h2(
                    classes:
                        'text-xs font-mono font-bold uppercase tracking-wider text-sky-400',
                    [text('Work Experience')],
                  ),
                  _buildResumeExperience(
                    'Senior Mobile Developer',
                    'AsInt Inc.',
                    'Nov 2023 – Present',
                    [
                      'Independently architected two flagship enterprise asset integrity apps (AsInt IntelliSuite & AsInt Edge) from scratch to production on the Google Play Store.',
                      'Engineered offline-first local SQLite SSOT via Drift with atomic SAP BTP synchronization.',
                      'Isolated heavy JSON deserialization to worker Dart Isolates, locking UI performance at 60 FPS.',
                      'Integrated native Bluetooth Ultrasonic Testing (UT) hardware gauges via Pigeon and Kotlin Coroutines.',
                    ],
                  ),
                  _buildResumeExperience(
                    'Flutter Developer',
                    'StockyDodo',
                    'Aug 2023 – Nov 2023',
                    [
                      'Delivered 36+ critical production and feature releases in an agile sprint cycle.',
                      'Redesigned core authentication flows and token refreshing logic.',
                      'Built nested notification deep linking system with 99.9% routing reliability.',
                    ],
                  ),
                  _buildResumeExperience(
                    'Flutter Developer',
                    'Finoux Solutions Pvt. Ltd. (Client: Motilal Oswal)',
                    'Jan 2023 – Jul 2023',
                    [
                      'Modernized 29 trading desks with reactive BLoC state machines and binary Protobuf data pipelines.',
                      'Configured multi-environment App Flavours (Dev, QA, Prod) with isolated CI/CD pipelines.',
                      'Enforced light-theme design system guidelines with high precision financial formatting.',
                    ],
                  ),
                  _buildResumeExperience(
                    'Mobile Application Developer',
                    'MindfulMachine Pvt. Ltd.',
                    'Mar 2020 – Dec 2022',
                    [
                      'Shipped 25+ commercial applications across Flutter, Native Android (Kotlin), and iOS (Swift).',
                      'Built Node.js/TypeScript/MongoDB backend for IoT Smart Parking application with BLE barrier access.',
                      'Developed Blinkist-style audio learning platform with AWS Cognito Amplify, Razorpay, and ConnectyCube video/chat.',
                    ],
                  ),
                ]),

                // Technical Skills
                div(classes: 'space-y-3', [
                  h2(
                    classes:
                        'text-xs font-mono font-bold uppercase tracking-wider text-sky-400',
                    [text('Technical Competencies')],
                  ),
                  div(classes: 'grid grid-cols-1 sm:grid-cols-2 gap-3 text-xs', [
                    _buildSkillLine('Languages', 'Dart, Kotlin, Swift, Java, TypeScript'),
                    _buildSkillLine('Mobile/Web', 'Flutter (Android/iOS/Web), Jaspr, Native Android, Native iOS'),
                    _buildSkillLine('Architecture', 'Clean Architecture, Offline-First SSOT, Riverpod, BLoC, GetX'),
                    _buildSkillLine('Data/Concurrency', 'Drift (SQLite), Protobuf, Dart Isolates, Supabase, Firebase'),
                    _buildSkillLine('Native Interop', 'Pigeon, MethodChannel, EventChannel, Kotlin Coroutines, BLE'),
                    _buildSkillLine('Cloud/DevOps', 'SAP BTP Sync, AWS Cognito, Node.js, MongoDB, CI/CD, App Flavours'),
                  ]),
                ]),

                // Education
                div(classes: 'space-y-2 pt-2 border-t border-slate-800', [
                  h2(
                    classes:
                        'text-xs font-mono font-bold uppercase tracking-wider text-sky-400',
                    [text('Education')],
                  ),
                  div(classes: 'flex justify-between items-start text-xs sm:text-sm', [
                    div(classes: 'flex flex-col', [
                      span(
                        classes: 'font-bold text-slate-100',
                        [text('B.Sc. (Hons.) in Computer Science')],
                      ),
                      span(
                        classes: 'text-slate-400',
                        [text('Dyal Singh College, University of Delhi')],
                      ),
                    ]),
                    span(
                      classes: 'font-mono text-slate-400 text-xs',
                      [text('2017 – 2020')],
                    ),
                  ]),
                ]),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildResumeProduct(String title, String role, String desc) {
    return div(
      classes: 'p-3 rounded-xl bg-slate-900 border border-slate-800 text-xs',
      [
        div(classes: 'flex justify-between items-center', [
          strong(classes: 'text-slate-100 font-bold', [text(title)]),
          span(classes: 'text-sky-400 font-mono text-[11px]', [text(role)]),
        ]),
        p(classes: 'text-slate-400 mt-1 leading-relaxed', [text(desc)]),
      ],
    );
  }

  Component _buildResumeExperience(
    String role,
    String company,
    String period,
    List<String> bullets,
  ) {
    return div(classes: 'space-y-1.5 text-xs', [
      div(classes: 'flex justify-between items-center', [
        div(classes: 'flex items-center gap-2', [
          strong(classes: 'text-slate-100 font-bold text-sm', [text(role)]),
          span(classes: 'text-sky-400 font-semibold', [text('@ $company')]),
        ]),
        span(classes: 'text-slate-400 font-mono text-[11px]', [text(period)]),
      ]),
      ul(
        classes: 'space-y-1 pl-4 text-slate-300 list-disc',
        bullets.map((b) => li([text(b)])).toList(),
      ),
    ]);
  }

  Component _buildSkillLine(String label, String value) {
    return div(
      classes: 'p-2 rounded-lg bg-slate-900 border border-slate-800',
      [
        span(classes: 'text-sky-400 font-mono font-bold block mb-0.5', [text(label)]),
        span(classes: 'text-slate-300 font-mono', [text(value)]),
      ],
    );
  }
}
