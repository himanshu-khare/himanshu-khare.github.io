import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

enum HeroPhoneTab {
  asint('AsInt Enterprise', 'Industrial Asset Integrity'),
  motilal('Motilal Oswal', 'Protobuf Stock Broking'),
  tawft('Tawft UI Kit', '100+ Web & Mobile Widgets'),
  clientApps('Client Apps (25+)', 'Global Commercial Deployments');

  final String label;
  final String subTitle;
  const HeroPhoneTab(this.label, this.subTitle);
}

class HeroPhoneDock extends StatefulComponent {
  final VoidCallback onOpenResume;

  const HeroPhoneDock({required this.onOpenResume, super.key});

  @override
  State<HeroPhoneDock> createState() => _HeroPhoneDockState();
}

class _HeroPhoneDockState extends State<HeroPhoneDock> {
  HeroPhoneTab _selectedTab = HeroPhoneTab.asint;

  @override
  Component build(BuildContext context) {
    return section(
      classes:
          'relative min-h-[90vh] flex items-center justify-center pt-8 pb-20 px-4 sm:px-6 lg:px-8 overflow-hidden',
      [
        // Ambient background glow balls
        div(
          classes:
              'ambient-glow w-[500px] h-[500px] bg-sky-500/10 top-10 left-[-150px]',
          [],
        ),
        div(
          classes:
              'ambient-glow w-[600px] h-[600px] bg-indigo-600/10 bottom-0 right-[-200px]',
          [],
        ),

        div(
          classes:
              'max-w-7xl mx-auto w-full grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-8 items-center z-10',
          [
            // ----------------------------------------------------
            // LEFT COLUMN: ARCHITECT PITCH & QUICK METRICS
            // ----------------------------------------------------
            div(classes: 'lg:col-span-7 flex flex-col gap-6 text-left', [
              // Pre-title Badge
              div(
                classes:
                    'inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-mono font-semibold bg-sky-500/10 text-sky-400 border border-sky-500/20 w-fit shadow-sm',
                [
                  span(classes: 'text-sky-400', [text('⚡')]),
                  text('SENIOR MOBILE SYSTEMS ARCHITECT (6.5+ YRS)'),
                ],
              ),

              // Hero Headline
              div(classes: 'flex flex-col gap-2', [
                h1(
                  classes:
                      'text-4xl sm:text-5xl lg:text-6xl font-extrabold tracking-tight text-slate-100 leading-[1.1]',
                  [
                    text('Building '),
                    span(
                      classes: 'text-gradient-blue',
                      [text('Offline-First')],
                    ),
                    text(' Mobile Engines & High-Scale Systems.'),
                  ],
                ),
                p(
                  classes:
                      'text-slate-300 text-base sm:text-lg leading-relaxed mt-2 max-w-2xl font-normal',
                  [
                    text(
                      'Hi, I’m ',
                    ),
                    strong(
                      classes: 'text-sky-400 font-semibold',
                      [text('Himanshu Khare')],
                    ),
                    text(
                      ' — Senior Mobile Engineer specializing in Flutter, Native Android (Kotlin), and iOS (Swift). Solo architect of enterprise asset integrity suites from scratch to production, server-driven dynamic UIs, low-latency Protobuf trading platforms, and native hardware Bluetooth bridges.',
                    ),
                  ],
                ),
              ]),

              // Quick Stats Grid (Bento Metrics)
              div(
                classes:
                    'grid grid-cols-2 sm:grid-cols-4 gap-3 pt-2 pb-2',
                [
                  _buildMetricTile(
                    '6.5+ Yrs',
                    'Production Exp',
                    'Flutter • Android • iOS',
                    '#38BDF8',
                  ),
                  _buildMetricTile(
                    '25+ Apps',
                    'Shipped to Stores',
                    'Global Client Deployments',
                    '#818CF8',
                  ),
                  _buildMetricTile(
                    '100+ UI',
                    'Curated Widgets',
                    'Tawft UI Open-Source',
                    '#34D399',
                  ),
                  _buildMetricTile(
                    '60 FPS',
                    'Offline SSOT',
                    'Drift SQLite + Isolates',
                    '#F59E0B',
                  ),
                ],
              ),

              // Action CTAs
              div(
                classes: 'flex flex-wrap items-center gap-4 pt-4',
                [
                  a(
                    href: '#architecture',
                    classes:
                        'px-6 py-3.5 rounded-xl font-bold text-sm bg-gradient-to-r from-sky-500 to-indigo-600 text-white shadow-xl shadow-sky-500/25 hover:shadow-sky-500/40 hover:-translate-y-0.5 transition-all duration-300 text-decoration-none flex items-center gap-2 cursor-pointer',
                    [
                      text('Explore Architecture X-Ray'),
                      span(classes: 'font-mono text-xs', [text('↓')]),
                    ],
                  ),
                  a(
                    href: '#vault',
                    classes:
                        'px-5 py-3.5 rounded-xl font-semibold text-sm bg-slate-800/80 hover:bg-slate-700/80 text-slate-200 border border-slate-700/80 hover:border-slate-600 hover:-translate-y-0.5 transition-all duration-300 text-decoration-none flex items-center gap-2 cursor-pointer',
                    [
                      text('Project Vault (25+)'),
                      span(classes: 'text-xs text-sky-400 font-mono', [text('★')]),
                    ],
                  ),
                  button(
                    events: {'click': (_) => component.onOpenResume()},
                    classes:
                        'px-5 py-3.5 rounded-xl font-semibold text-sm bg-slate-900/60 hover:bg-slate-800 text-slate-300 border border-slate-700/60 hover:border-sky-500/40 hover:-translate-y-0.5 transition-all duration-300 flex items-center gap-2 cursor-pointer',
                    [
                      span(classes: 'text-sky-400 font-mono', [text('📄')]),
                      text('Download Resume'),
                    ],
                  ),
                ],
              ),

              // Creator & Community Callout
              div(
                classes:
                    'flex items-center gap-4 text-xs font-mono text-slate-400 pt-2 border-t border-slate-800/60',
                [
                  span(classes: 'flex items-center gap-1.5', [
                    span(classes: 'text-sky-400', [text('📍')]),
                    text('Delhi NCR / Ghaziabad, India'),
                  ]),
                  span(classes: 'text-slate-600', [text('•')]),
                  span(classes: 'flex items-center gap-1.5', [
                    span(classes: 'text-indigo-400', [text('🎙️')]),
                    text('@appdevwithhimanshu'),
                  ]),
                  span(classes: 'text-slate-600', [text('•')]),
                  a(
                    href: 'https://tawftapp.github.io/',
                    target: Target.blank,
                    classes: 'text-sky-400 hover:underline',
                    [text('tawftapp.github.io')],
                  ),
                ],
              ),
            ]),

            // ----------------------------------------------------
            // RIGHT COLUMN: INTERACTIVE PHONE DOCK (IPHONE / PIXEL)
            // ----------------------------------------------------
            div(
              classes:
                  'lg:col-span-5 flex flex-col items-center justify-center relative',
              [
                // Tabs Pill Switcher above phone
                div(
                  classes:
                      'w-full max-w-[360px] flex items-center justify-between p-1 bg-slate-900/90 border border-slate-800 rounded-2xl mb-4 shadow-xl backdrop-blur-md',
                  HeroPhoneTab.values.map((tab) {
                    final isSelected = tab == _selectedTab;
                    return button(
                      events: {
                        'click': (_) {
                          setState(() {
                            _selectedTab = tab;
                          });
                        }
                      },
                      classes:
                          'flex-1 py-1.5 text-xs font-semibold rounded-xl transition-all duration-200 cursor-pointer ${isSelected ? 'bg-gradient-to-r from-sky-500 to-indigo-600 text-white shadow-md' : 'text-slate-400 hover:text-slate-200 bg-transparent'}',
                      [
                        text(tab == HeroPhoneTab.asint
                            ? 'AsInt'
                            : tab == HeroPhoneTab.motilal
                                ? 'Motilal'
                                : tab == HeroPhoneTab.tawft
                                    ? 'Tawft'
                                    : 'Vault'),
                      ],
                    );
                  }).toList(),
                ),

                // Phone Frame Device Container
                div(classes: 'phone-device-frame', [
                  // Dynamic Island
                  div(classes: 'dynamic-island', [
                    div(classes: 'camera-lens', []),
                    div(classes: 'sensor-dot', []),
                  ]),

                  // Phone Screen Viewport
                  div(classes: 'phone-screen', [
                    // Status bar
                    div(
                      classes:
                          'px-6 py-2 flex items-center justify-between text-[11px] font-mono text-slate-400 select-none',
                      [
                        span(classes: 'font-bold text-slate-200', [text('09:41')]),
                        div(classes: 'flex items-center gap-1.5', [
                          span(classes: 'text-[9px] text-sky-400', [text('5G')]),
                          span(classes: 'text-slate-300', [text('📶')]),
                          span(classes: 'text-emerald-400 font-bold', [text('100%')]),
                        ]),
                      ],
                    ),

                    // Interactive App Screen content
                    div(
                      classes:
                          'flex-1 p-4 flex flex-col gap-3 transition-all duration-300',
                      [_renderPhoneAppContent()],
                    ),
                  ]),

                  // Home Indicator
                  div(classes: 'phone-home-indicator', []),
                ]),

                // Phone sub-caption
                div(
                  classes:
                      'mt-4 text-center text-xs font-mono text-slate-400 flex items-center gap-2',
                  [
                    span(classes: 'w-2 h-2 rounded-full bg-sky-400 ping-dot', []),
                    text('Live Device Simulator: ${_selectedTab.label}'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildMetricTile(
    String val,
    String label,
    String sub,
    String color,
  ) {
    return div(
      classes:
          'glass-card p-3 rounded-xl flex flex-col border border-slate-800/80 hover:border-sky-500/30 transition-all',
      [
        span(
          classes: 'metric-val text-xl sm:text-2xl font-bold text-slate-100',
          [text(val)],
        ),
        span(classes: 'text-xs font-semibold text-slate-300 mt-0.5', [text(label)]),
        span(
          classes: 'text-[10px] text-slate-400 font-mono mt-0.5 leading-tight truncate',
          [text(sub)],
        ),
      ],
    );
  }

  Component _renderPhoneAppContent() {
    switch (_selectedTab) {
      case HeroPhoneTab.asint:
        return div(classes: 'flex flex-col gap-3 text-left', [
          // App Header
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/90 border border-sky-500/30 flex items-center justify-between',
            [
              div(classes: 'flex items-center gap-2', [
                div(
                  classes:
                      'w-8 h-8 rounded-lg bg-sky-500/20 text-sky-400 flex items-center justify-center font-bold text-xs',
                  [text('AI')],
                ),
                div(classes: 'flex flex-col', [
                  span(
                    classes: 'text-xs font-bold text-slate-200',
                    [text('AsInt IntelliSuite')],
                  ),
                  span(
                    classes: 'text-[10px] text-emerald-400 font-mono',
                    [text('● Offline SSOT Active')],
                  ),
                ]),
              ]),
              span(
                classes:
                    'px-2 py-0.5 rounded text-[10px] font-mono bg-slate-800 text-sky-400 border border-slate-700',
                [text('v4.8.2')],
              ),
            ],
          ),

          // Ultrasonic Sensor Live Metric
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/70 border border-slate-800 flex flex-col gap-2',
            [
              div(classes: 'flex items-center justify-between text-xs', [
                span(
                  classes: 'text-slate-300 font-medium',
                  [text('Pigeon BLE Sensor Stream')],
                ),
                span(
                  classes: 'text-sky-400 font-mono text-[10px]',
                  [text('120 Hz UT')],
                ),
              ]),
              div(
                classes:
                    'h-12 w-full bg-slate-950 rounded-lg p-2 flex items-end gap-1 overflow-hidden border border-slate-800/80',
                [
                  _buildGraphBar(40),
                  _buildGraphBar(65),
                  _buildGraphBar(85),
                  _buildGraphBar(50),
                  _buildGraphBar(95),
                  _buildGraphBar(75),
                  _buildGraphBar(100),
                  _buildGraphBar(60),
                  _buildGraphBar(45),
                  _buildGraphBar(90),
                ],
              ),
              div(
                classes:
                    'flex items-center justify-between text-[10px] font-mono text-slate-400',
                [
                  text('Probe: Olympus 5MHz'),
                  text('Thickness: 12.48 mm'),
                ],
              ),
            ],
          ),

          // Dynamic Form Inspector
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/70 border border-slate-800 flex flex-col gap-1.5',
            [
              div(classes: 'flex items-center justify-between text-xs', [
                span(
                  classes: 'text-slate-300 font-medium',
                  [text('CML Inspection Workflow')],
                ),
                span(
                  classes: 'text-emerald-400 font-mono text-[10px]',
                  [text('SAP In-Sync')],
                ),
              ]),
              div(
                classes:
                    'p-2 rounded bg-slate-950 text-[11px] font-mono text-slate-300 flex justify-between items-center',
                [
                  text('Circuit #108 - Vessel C-40'),
                  span(classes: 'text-sky-400', [text('PASS ✓')]),
                ],
              ),
            ],
          ),

          // Architecture Footprint Card
          div(
            classes:
                'p-2.5 rounded-xl bg-gradient-to-r from-sky-500/10 to-indigo-500/10 border border-sky-500/30 flex flex-col gap-1',
            [
              span(
                classes: 'text-[10px] font-mono uppercase tracking-wider text-sky-400 font-bold',
                [text('ARCHITECTURAL GUARANTEE')],
              ),
              span(
                classes: 'text-xs text-slate-200 leading-snug',
                [
                  text(
                    'Multi-MB JSON background isolate parsing guarantees zero dropped frames at steady 60 FPS.',
                  ),
                ],
              ),
            ],
          ),
        ]);

      case HeroPhoneTab.motilal:
        return div(classes: 'flex flex-col gap-3 text-left', [
          // Trading Header
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/90 border border-emerald-500/30 flex items-center justify-between',
            [
              div(classes: 'flex items-center gap-2', [
                div(
                  classes:
                      'w-8 h-8 rounded-lg bg-emerald-500/20 text-emerald-400 flex items-center justify-center font-bold text-xs',
                  [text('MO')],
                ),
                div(classes: 'flex flex-col', [
                  span(
                    classes: 'text-xs font-bold text-slate-200',
                    [text('Motilal Oswal Trader')],
                  ),
                  span(
                    classes: 'text-[10px] text-emerald-400 font-mono',
                    [text('Protobuf Stream Active')],
                  ),
                ]),
              ]),
              span(
                classes:
                    'px-2 py-0.5 rounded text-[10px] font-mono bg-emerald-500/10 text-emerald-400 border border-emerald-500/30',
                [text('< 15ms')],
              ),
            ],
          ),

          // Ticker Board
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/70 border border-slate-800 flex flex-col gap-2',
            [
              div(classes: 'flex justify-between items-center', [
                div(classes: 'flex flex-col', [
                  span(classes: 'text-xs font-bold text-slate-100', [text('NIFTY 50')]),
                  span(classes: 'text-[10px] text-slate-400 font-mono', [text('Spot Index')]),
                ]),
                div(classes: 'flex flex-col items-end', [
                  span(classes: 'text-xs font-bold text-emerald-400 font-mono', [text('24,180.50')]),
                  span(classes: 'text-[10px] text-emerald-400 font-mono', [text('+184.20 (+0.77%)')]),
                ]),
              ]),
              div(classes: 'flex justify-between items-center pt-2 border-t border-slate-800/80', [
                div(classes: 'flex flex-col', [
                  span(classes: 'text-xs font-bold text-slate-100', [text('BANK NIFTY')]),
                  span(classes: 'text-[10px] text-slate-400 font-mono', [text('Derivatives')]),
                ]),
                div(classes: 'flex flex-col items-end', [
                  span(classes: 'text-xs font-bold text-emerald-400 font-mono', [text('51,420.10')]),
                  span(classes: 'text-[10px] text-emerald-400 font-mono', [text('+410.80 (+0.81%)')]),
                ]),
              ]),
            ],
          ),

          // Slivers Order Book Preview
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/70 border border-slate-800 flex flex-col gap-1.5',
            [
              span(classes: 'text-xs font-bold text-slate-300', [text('Order Execution Stream')]),
              div(
                classes:
                    'p-2 rounded bg-slate-950 font-mono text-[10px] text-slate-400 flex justify-between',
                [
                  text('BUY 500 RELIANCE @ 2,980.00'),
                  span(classes: 'text-emerald-400', [text('FILLED')]),
                ],
              ),
              div(
                classes:
                    'p-2 rounded bg-slate-950 font-mono text-[10px] text-slate-400 flex justify-between',
                [
                  text('SELL 200 HDFCBANK @ 1,640.20'),
                  span(classes: 'text-emerald-400', [text('FILLED')]),
                ],
              ),
            ],
          ),

          // Footprint Card
          div(
            classes:
                'p-2.5 rounded-xl bg-emerald-500/10 border border-emerald-500/30 flex flex-col gap-1',
            [
              span(
                classes: 'text-[10px] font-mono uppercase tracking-wider text-emerald-400 font-bold',
                [text('BINARY ENCODING PERFORMANCE')],
              ),
              span(
                classes: 'text-xs text-slate-200 leading-snug',
                [
                  text(
                    '29 revamped trading desks utilizing Protobuf binary payloads over WebSockets, dropping JSON overhead by 72%.',
                  ),
                ],
              ),
            ],
          ),
        ]);

      case HeroPhoneTab.tawft:
        return div(classes: 'flex flex-col gap-3 text-left', [
          // Tawft Header
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/90 border border-indigo-500/30 flex items-center justify-between',
            [
              div(classes: 'flex items-center gap-2', [
                div(
                  classes:
                      'w-8 h-8 rounded-lg bg-indigo-500/20 text-indigo-400 flex items-center justify-center font-bold text-xs',
                  [text('TF')],
                ),
                div(classes: 'flex flex-col', [
                  span(
                    classes: 'text-xs font-bold text-slate-200',
                    [text('Tawft UI Directory')],
                  ),
                  span(
                    classes: 'text-[10px] text-indigo-400 font-mono',
                    [text('100+ Reusable Components')],
                  ),
                ]),
              ]),
              span(
                classes:
                    'px-2 py-0.5 rounded text-[10px] font-mono bg-indigo-500/10 text-indigo-400 border border-indigo-500/30',
                [text('Live Web')],
              ),
            ],
          ),

          // Interactive Widget Preview Box
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/70 border border-slate-800 flex flex-col gap-2',
            [
              span(classes: 'text-xs font-semibold text-slate-300', [text('Featured: Glassmorphic NeoCard')]),
              div(
                classes:
                    'p-3 rounded-lg bg-gradient-to-tr from-indigo-500/20 to-sky-500/20 border border-white/10 backdrop-blur-md flex flex-col gap-1',
                [
                  div(classes: 'flex items-center justify-between', [
                    span(classes: 'text-xs font-bold text-white', [text('TawftGlassWidget()')]),
                    span(classes: 'text-[10px] font-mono text-sky-400', [text('Flutter Web')]),
                  ]),
                  span(
                    classes: 'text-[10px] text-slate-300 font-mono',
                    [text('ImageFilter.blur(sigmaX: 16, sigmaY: 16)')],
                  ),
                ],
              ),
            ],
          ),

          // Live Code Snippet Box
          div(
            classes:
                'p-2 rounded bg-slate-950 border border-slate-800/80 font-mono text-[9px] text-slate-300 overflow-x-auto',
            [
              div(classes: 'text-indigo-400', [text('// Built in Jaspr & Flutter')]),
              div(classes: 'text-slate-400', [text('class TawftCard extends StatelessWidget {')]),
              div(classes: 'text-slate-400 pl-2', [text('final Widget child;')]),
              div(classes: 'text-slate-400', [text('}')]),
            ],
          ),

          // Footprint Card
          div(
            classes:
                'p-2.5 rounded-xl bg-indigo-500/10 border border-indigo-500/30 flex flex-col gap-1',
            [
              span(
                classes: 'text-[10px] font-mono uppercase tracking-wider text-indigo-400 font-bold',
                [text('LIVE WEB ECOSYSTEM')],
              ),
              span(
                classes: 'text-xs text-slate-200 leading-snug',
                [
                  text(
                    'Deployed at tawftapp.github.io. Backed by Supabase edge functions and high-performance WebGL rendering.',
                  ),
                ],
              ),
            ],
          ),
        ]);

      case HeroPhoneTab.clientApps:
        return div(classes: 'flex flex-col gap-3 text-left', [
          // Vault Header
          div(
            classes:
                'p-3 rounded-xl bg-slate-900/90 border border-amber-500/30 flex items-center justify-between',
            [
              div(classes: 'flex items-center gap-2', [
                div(
                  classes:
                      'w-8 h-8 rounded-lg bg-amber-500/20 text-amber-400 flex items-center justify-center font-bold text-xs',
                  [text('25+')],
                ),
                div(classes: 'flex flex-col', [
                  span(
                    classes: 'text-xs font-bold text-slate-200',
                    [text('Commercial Apps Vault')],
                  ),
                  span(
                    classes: 'text-[10px] text-amber-400 font-mono',
                    [text('Firebase Storage Synced')],
                  ),
                ]),
              ]),
              span(
                classes:
                    'px-2 py-0.5 rounded text-[10px] font-mono bg-amber-500/10 text-amber-400 border border-amber-500/30',
                [text('Store Ready')],
              ),
            ],
          ),

          // Mini Portfolio Grid
          div(classes: 'grid grid-cols-2 gap-2', [
            _buildMiniVaultTile('AgroBid', 'B2B Auctions', 'agrobid'),
            _buildMiniVaultTile('AutoGott', 'Inspection AI', 'autogott'),
            _buildMiniVaultTile('Awblo', 'Fleet Logistics', 'awblo'),
            _buildMiniVaultTile('Direct2U', 'Quick Commerce', 'direct2u'),
          ]),

          // Footprint Card
          div(
            classes:
                'p-2.5 rounded-xl bg-amber-500/10 border border-amber-500/30 flex flex-col gap-1',
            [
              span(
                classes: 'text-[10px] font-mono uppercase tracking-wider text-amber-400 font-bold',
                [text('FULL-STACK CAPABILITY')],
              ),
              span(
                classes: 'text-xs text-slate-200 leading-snug',
                [
                  text(
                    'From IoT Bluetooth hardware drivers to Node.js/MongoDB microservices and AWS Cognito auth pipelines.',
                  ),
                ],
              ),
            ],
          ),
        ]);
    }
  }

  Component _buildGraphBar(int heightPercent) {
    return div(
      classes:
          'flex-1 bg-gradient-to-t from-sky-600 to-sky-400 rounded-t-sm transition-all duration-300',
      styles: Styles(height: heightPercent.percent),
      [],
    );
  }

  Component _buildMiniVaultTile(String title, String category, String folder) {
    return div(
      classes:
          'p-2 rounded-lg bg-slate-900 border border-slate-800 flex flex-col gap-0.5',
      [
        span(classes: 'text-[11px] font-bold text-slate-200 truncate', [text(title)]),
        span(classes: 'text-[9px] text-slate-400 font-mono truncate', [text(category)]),
        span(classes: 'text-[8px] text-sky-400 font-mono truncate', [text('gs://$folder')]),
      ],
    );
  }
}
