import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../services/firebase_portfolio_service.dart';

class HeroSection extends StatefulComponent {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  int _currentShotIndex = 0;

  // High-impact real mobile screenshots from Firebase Storage (portfolio-e3e4a.appspot.com)
  static final List<Map<String, String>> _showcaseScreenshots = [
    // 1. AsInt Edge (Enterprise Hardware / Ultrasonic Testing)
    {
      'title': 'AsInt Edge Mobile',
      'category': 'Enterprise IoT',
      'sub': 'Offline-First Edge Inspection & Drift SQLite',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/asint_edge%2Ffirst.webp?alt=media',
    },
    {
      'title': 'AsInt Edge Mobile',
      'category': 'Hardware Bridge',
      'sub': 'Bluetooth Wireless Ultrasonic Testing (UT)',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/asint_edge%2Fthird.webp?alt=media',
    },
    // 2. AsInt IntelliSuite (Industrial Asset Integrity / Digital Twin)
    {
      'title': 'AsInt IntelliSuite',
      'category': 'Industrial Systems',
      'sub': 'Asset Integrity & Digital Twin Inspection',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/asint_intellisuite%2Ffirst.webp?alt=media',
    },
    {
      'title': 'AsInt IntelliSuite',
      'category': 'Enterprise Forms',
      'sub': 'Server-Driven Dynamic Form Engine & CML',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/asint_intellisuite%2Fsecond.webp?alt=media',
    },
    // 3. Motilal Oswal Trader (Fintech & Stock Broking)
    {
      'title': 'Motilal Oswal Trader',
      'category': 'Fintech & Trading',
      'sub': 'Live Market Depth & Binary Protobuf Stream',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/mo-trader%2F1st.webp?alt=media',
    },
    {
      'title': 'Motilal Oswal Trader',
      'category': 'High-Frequency Orders',
      'sub': 'Multi-Asset Portfolio & Options Chain',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/mo-trader%2F2nd.webp?alt=media',
    },
    // 4. Tawft UI (Flutter Design System & Web Showcase)
    {
      'title': 'Tawft UI Directory',
      'category': 'UI Architecture',
      'sub': '100+ Production Flutter Widgets & Components',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/tawft%2Fshowcase.jpg?alt=media',
    },
    // 5. Aura Luxury Commerce (E-Commerce)
    {
      'title': 'Aura Luxury Commerce',
      'category': 'E-Commerce',
      'sub': 'Fluid Retail Showcase & One-Tap Checkout',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/ecom%2F1st.webp?alt=media',
    },
    {
      'title': 'Aura Luxury Commerce',
      'category': 'E-Commerce',
      'sub': 'Product Inspector & Interactive Filters',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/ecom%2F2nd.webp?alt=media',
    },
    // 6. Fitoose AI Fitness (Computer Vision)
    {
      'title': 'Fitoose AI Fitness',
      'category': 'Computer Vision',
      'sub': 'Real-Time Camera Pose & Repetition Detection',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/fitoose%2F1st.webp?alt=media',
    },
    // 7. Countdown Habits & Events (iOS & Android Widgets)
    {
      'title': 'Countdown Events',
      'category': 'OS Widgets',
      'sub': 'iOS Dynamic Island Activities & Glance Widgets',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/countdown%2F1st.webp?alt=media',
    },
    // 8. YellowPlate Mobility (Fleet Telematics & On-Demand Dispatch)
    {
      'title': 'YellowPlate Mobility',
      'category': 'Fleet Logistics',
      'sub': 'Enterprise Cab Dispatch & Real-Time Telematics',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/yellowplate%2F1st.webp?alt=media',
    },
    // 9. Karpak Smart Mobility (Smart City / IoT)
    {
      'title': 'Karpak Smart Parking',
      'category': 'IoT & Mobility',
      'sub': 'Sensor Guidance & IoT Urban Parking Matrix',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/portfolio-e3e4a.appspot.com/o/karpak%2F1st.webp?alt=media',
    },
  ];

  void _prevScreenshot() {
    setState(() {
      _currentShotIndex =
          (_currentShotIndex - 1 + _showcaseScreenshots.length) %
              _showcaseScreenshots.length;
    });
  }

  void _nextScreenshot() {
    setState(() {
      _currentShotIndex =
          (_currentShotIndex + 1) % _showcaseScreenshots.length;
    });
  }

  @override
  Component build(BuildContext context) {
    final activeShot = _showcaseScreenshots[_currentShotIndex];

    return section(
      classes: 'pt-16 pb-20 border-b border-white/[0.06]',
      [
        div(
          classes:
              'site-container grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-16 items-center',
          [
            // ----------------------------------------------------
            // LEFT COLUMN: EDITORIAL BIO & CALL-TO-ACTION (7 cols)
            // ----------------------------------------------------
            div(classes: 'lg:col-span-7 flex flex-col text-left', [
              // Clean Editorial Headline
              h1(
                classes:
                    'text-3xl sm:text-4xl lg:text-[42px] font-semibold text-[#F4F4F5] tracking-[-0.03em] leading-[1.15]',
                [
                  text('Senior Mobile Developer building Flutter & native apps.'),
                ],
              ),

              // Senior Mobile Engineer Overview (Single Paragraph)
              p(
                classes:
                    'mt-6 max-w-xl text-base sm:text-[17px] text-[#A1A1AA] leading-[1.65] font-normal',
                [
                  text(
                    'Senior Mobile Engineer with 6.5+ years of experience architecting and shipping high-performance applications across Flutter, Native Android (Kotlin), and iOS (Swift). Focused on scalable client architecture, offline-first data synchronization, native platform integrations, and fluid 60 FPS interactions—engineering resilient mobile products from initial concept to store release.',
                  ),
                ],
              ),

              // Understated CTAs
              div(
                classes: 'flex flex-wrap items-center gap-4 mt-8',
                [
                  a(
                    href: '#work',
                    classes: 'btn-primary text-decoration-none',
                    [text('View Selected Work')],
                  ),
                  a(
                    href: FirebasePortfolioService.resumePdfUrl,
                    target: Target.blank,
                    classes: 'btn-secondary text-decoration-none',
                    [text('Download Resume')],
                  ),
                ],
              ),

              // Single-line horizontal divider strip
              div(
                classes:
                    'mt-12 pt-8 border-t border-white/[0.08] text-xs sm:text-sm font-mono text-[#71717A] flex flex-wrap items-center gap-y-2',
                [
                  span(classes: 'text-[#A1A1AA]', [text('6.5+ Years Experience')]),
                  span(classes: 'mx-3 text-white/[0.2]', [text('•')]),
                  span(classes: 'text-[#A1A1AA]', [text('25+ Production Apps')]),
                  span(classes: 'mx-3 text-white/[0.2]', [text('•')]),
                  span(classes: 'text-[#A1A1AA]', [text('100+ Widgets on Tawft')]),
                ],
              ),
            ]),

            // ----------------------------------------------------
            // RIGHT COLUMN: REAL SCREENSHOT APP SHOWCASE FRAME (5 cols)
            // ----------------------------------------------------
            div(
              classes:
                  'lg:col-span-5 flex flex-col items-center justify-center',
              [
                // Sleek, minimal phone frame with real screenshots
                div(
                  classes: 'phone-clean-frame relative',
                  [
                    // Dynamic Island pill
                    div(classes: 'phone-dynamic-island', []),

                    // Real Screenshot Viewport
                    div(
                      classes: 'phone-screen-viewport',
                      [
                        img(
                          src: activeShot['url']!,
                          alt: activeShot['title']!,
                          classes: 'phone-screen-img',
                          attributes: {
                            'loading': 'eager',
                          },
                        ),

                        // Carousel Navigation Arrows (Subtle overlay)
                        button(
                          events: {'click': (_) => _prevScreenshot()},
                          classes:
                              'absolute left-2 top-1/2 -translate-y-1/2 w-8 h-8 rounded-full bg-black/60 hover:bg-black/90 text-white/80 hover:text-white border border-white/10 flex items-center justify-center cursor-pointer transition-colors backdrop-blur-sm text-xs font-mono',
                          attributes: {'aria-label': 'Previous Screenshot'},
                          [text('←')],
                        ),
                        button(
                          events: {'click': (_) => _nextScreenshot()},
                          classes:
                              'absolute right-2 top-1/2 -translate-y-1/2 w-8 h-8 rounded-full bg-black/60 hover:bg-black/90 text-white/80 hover:text-white border border-white/10 flex items-center justify-center cursor-pointer transition-colors backdrop-blur-sm text-xs font-mono',
                          attributes: {'aria-label': 'Next Screenshot'},
                          [text('→')],
                        ),
                      ],
                    ),
                  ],
                ),

                // Minimal Caption & Navigation Indicators Underneath
                div(
                  classes:
                      'mt-4 flex flex-col items-center text-center gap-1.5',
                  [
                    div(classes: 'flex items-center gap-2 flex-wrap justify-center', [
                      if (activeShot['category'] != null)
                        span(
                          classes:
                              'text-[10px] font-mono px-2 py-0.5 rounded-full bg-white/[0.08] text-[#F4F4F5] border border-white/[0.1]',
                          [text(activeShot['category']!)],
                        ),
                      span(
                        classes: 'text-xs font-semibold text-[#F4F4F5]',
                        [text(activeShot['title']!)],
                      ),
                      span(
                        classes:
                            'text-[10px] font-mono px-1.5 py-0.5 rounded bg-white/[0.06] text-[#71717A]',
                        [
                          text(
                            '${_currentShotIndex + 1} / ${_showcaseScreenshots.length}',
                          ),
                        ],
                      ),
                    ]),
                    span(
                      classes: 'text-[11px] font-mono text-[#A1A1AA]',
                      [text(activeShot['sub']!)],
                    ),
                    // Micro dot indicators
                    div(
                      classes:
                          'flex items-center gap-1 mt-1 max-w-[280px] flex-wrap justify-center',
                      List.generate(
                        _showcaseScreenshots.length,
                        (index) => span(
                          classes:
                              'h-1 rounded-full transition-all duration-200 ${index == _currentShotIndex ? "bg-white w-3" : "bg-white/20 w-1"}',
                          [],
                        ),
                      ),
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

