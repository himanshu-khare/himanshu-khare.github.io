import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/project_model.dart';
import '../services/firebase_portfolio_service.dart';

class WorkGallery extends StatefulComponent {
  const WorkGallery({super.key});

  @override
  State<WorkGallery> createState() => _WorkGalleryState();
}

class _WorkGalleryState extends State<WorkGallery> {
  ProjectModel? _lightboxProject;
  int _lightboxImageIndex = 0;
  final Set<String> _expandedProjectIds = {};
  int _visibleArchiveCount = 10;

  void _openLightbox(ProjectModel project) {
    setState(() {
      _lightboxProject = project;
      _lightboxImageIndex = 0;
    });
  }

  void _closeLightbox() {
    setState(() {
      _lightboxProject = null;
    });
  }

  void _toggleExpand(String id) {
    setState(() {
      if (_expandedProjectIds.contains(id)) {
        _expandedProjectIds.remove(id);
      } else {
        _expandedProjectIds.add(id);
      }
    });
  }

  void _loadMoreArchive() {
    setState(() {
      _visibleArchiveCount += 10;
    });
  }

  @override
  Component build(BuildContext context) {
    final featured = FirebasePortfolioService.featuredProjects;
    final archive = FirebasePortfolioService.archiveProjects;

    return section(
      id: 'work',
      classes: 'py-24 border-b border-white/[0.06] text-left',
      [
        div(classes: 'site-container flex flex-col gap-20', [
          // ----------------------------------------------------
          // PART A: 3 FEATURED CASE STUDIES
          // ----------------------------------------------------
          div(classes: 'flex flex-col gap-10', [
            div(classes: 'flex flex-col gap-2', [
              span(
                classes:
                    'text-xs font-mono font-medium tracking-wider text-[#71717A] uppercase',
                [text('Selected Architecture')],
              ),
              h2(
                classes:
                    'text-2xl sm:text-3xl font-semibold text-[#F4F4F5] tracking-tight',
                [text('Featured Systems')],
              ),
            ]),

            div(
              classes: 'grid grid-cols-1 md:grid-cols-3 gap-6',
              featured.map((p) => _buildFeaturedCard(p)).toList(),
            ),
          ]),

          // ----------------------------------------------------
          // PART B: CLIENT & PRODUCTION ARCHIVE (REAL SCREENSHOTS)
          // ----------------------------------------------------
          div(classes: 'flex flex-col gap-10', [
            div(
              classes:
                  'flex flex-col sm:flex-row sm:items-end justify-between gap-4 border-t border-white/[0.08] pt-12',
              [
                div(classes: 'flex flex-col gap-2', [
                  span(
                    classes:
                        'text-xs font-mono font-medium tracking-wider text-[#71717A] uppercase',
                    [text('Commercial Deployments')],
                  ),
                  h2(
                    classes:
                        'text-2xl sm:text-3xl font-semibold text-[#F4F4F5] tracking-tight',
                    [text('Production Archive (25+ Apps)')],
                  ),
                ]),
                span(
                  classes: 'text-xs font-mono text-[#71717A]',
                  [text('Click to Preview')],
                ),
              ],
            ),

            div(
              classes:
                  'grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6',
              archive
                  .take(_visibleArchiveCount)
                  .map((p) => _buildArchiveCard(p))
                  .toList(),
            ),

            if (_visibleArchiveCount < archive.length)
              div(
                classes: 'flex justify-center pt-6',
                [
                  button(
                    events: {'click': (_) => _loadMoreArchive()},
                    classes:
                        'flex items-center gap-2 px-6 py-2.5 rounded-full text-xs font-mono font-medium text-[#D4D4D8] hover:text-white bg-[#141416] hover:bg-[#1E1E22] border border-white/[0.08] hover:border-white/[0.2] transition-all cursor-pointer shadow-sm focus:outline-none',
                    [
                      text(
                        'Load More Projects (${archive.length - _visibleArchiveCount} remaining) ↓',
                      ),
                    ],
                  ),
                ],
              ),
          ]),
        ]),

        // Clean Lightbox Modal for Screenshots
        if (_lightboxProject != null) _renderLightboxModal(),
      ],
    );
  }

  Component _buildFeaturedCard(ProjectModel project) {
    final isExpanded = _expandedProjectIds.contains(project.id);

    return div(
      classes:
          'card-clean p-6 flex flex-col justify-between gap-6 group text-left transition-all',
      [
        div(classes: 'flex flex-col gap-3', [
          div(classes: 'flex items-center justify-between', [
            span(
              classes:
                  'text-[11px] font-mono text-[#71717A] uppercase tracking-wider',
              [text(project.category.label.split(' ')[0])],
            ),
            if (project.liveDemoUrl != null)
              a(
                href: project.liveDemoUrl!,
                target: Target.blank,
                classes:
                    'text-xs font-mono text-[#A1A1AA] hover:text-white transition-colors text-decoration-none',
                [text('Live Site ↗')],
              )
            else if (project.playStoreUrl != null)
              a(
                href: project.playStoreUrl!,
                target: Target.blank,
                classes:
                    'text-xs font-mono text-[#A1A1AA] hover:text-white transition-colors text-decoration-none',
                [text('Google Play ↗')],
              ),
          ]),

          h3(
            classes:
                'text-lg font-semibold text-[#F4F4F5] group-hover:text-white transition-colors',
            [text(project.title)],
          ),

          div(classes: 'flex flex-col gap-2', [
            p(
              classes: isExpanded
                  ? 'text-xs sm:text-[13px] text-[#A1A1AA] leading-relaxed max-h-48 overflow-y-auto pr-1'
                  : 'text-xs sm:text-[13px] text-[#A1A1AA] leading-relaxed line-clamp-3',
              [text(project.description)],
            ),
            if (project.description.length > 120)
              button(
                classes:
                    'self-start text-[11px] font-mono text-[#71717A] hover:text-[#F4F4F5] transition-colors cursor-pointer bg-white/[0.04] hover:bg-white/[0.08] px-2 py-0.5 rounded border border-white/[0.06] flex items-center gap-1.5 focus:outline-none',
                events: {'click': (_) => _toggleExpand(project.id)},
                [
                  text(isExpanded ? 'Read less ↑' : 'Read more ↓'),
                ],
              ),
          ]),
        ]),

        // Tech stack tag list
        div(
          classes: 'flex flex-wrap gap-1.5 pt-4 border-t border-white/[0.06]',
          project.techStack.take(4).map((tech) {
            return span(
              classes:
                  'px-2 py-0.5 rounded text-[11px] font-mono text-[#71717A] bg-[#18181B] border border-white/[0.04]',
              [text(tech)],
            );
          }).toList(),
        ),
      ],
    );
  }

  Component _buildArchiveCard(ProjectModel project) {
    final previewUrl = project.getImageUrl(0);

    return div(
      classes:
          'card-clean overflow-hidden flex flex-col cursor-pointer group text-left',
      events: {'click': (_) => _openLightbox(project)},
      [
        // Real Screenshot Container
        div(
          classes:
              'relative w-full aspect-[4/3] bg-[#000000] overflow-hidden flex items-center justify-center border-b border-white/[0.06]',
          [
            img(
              src: previewUrl,
              alt: project.title,
              classes:
                  'w-full h-full object-cover object-top opacity-85 group-hover:opacity-100 group-hover:scale-105 transition-all duration-300',
              attributes: {
                'loading': 'lazy',
              },
            ),
            div(
              classes:
                  'absolute bottom-2 right-2 px-2 py-0.5 rounded text-[10px] font-mono bg-black/80 text-white/90 border border-white/10 backdrop-blur-sm',
              [
                text(
                  '${project.fileNames.length} ${project.fileNames.length == 1 ? "Screen" : "Screens"}',
                ),
              ],
            ),
          ],
        ),

        // Text & Info
        div(classes: 'p-5 flex flex-col gap-2', [
          div(classes: 'flex items-center justify-between', [
            h3(
              classes:
                  'text-sm font-semibold text-[#F4F4F5] group-hover:text-white transition-colors truncate',
              [text(project.title)],
            ),
          ]),
          p(
            classes: 'text-xs text-[#71717A] line-clamp-2 leading-relaxed',
            [text(project.tagLine)],
          ),
        ]),
      ],
    );
  }

  Component _renderLightboxModal() {
    final project = _lightboxProject!;
    final images = project.getAllImageUrls();
    final activeUrl = images[_lightboxImageIndex];

    return div(
      classes: 'lightbox-backdrop',
      events: {'click': (_) => _closeLightbox()},
      [
        div(
          classes: 'lightbox-content',
          events: {'click': (e) {}},
          [
            // Header
            div(
              classes:
                  'px-6 py-4 bg-[#121214] border-b border-white/[0.08] flex items-center justify-between',
              [
                div(classes: 'flex flex-col', [
                  h4(
                    classes: 'text-sm font-semibold text-[#F4F4F5]',
                    [text(project.title)],
                  ),
                  span(
                    classes: 'text-xs font-mono text-[#71717A]',
                    [text('${_lightboxImageIndex + 1} of ${images.length} screenshots')],
                  ),
                ]),
                button(
                  events: {'click': (_) => _closeLightbox()},
                  classes:
                      'w-7 h-7 rounded-full bg-[#18181B] hover:bg-[#27272A] text-[#A1A1AA] hover:text-white flex items-center justify-center border border-white/[0.08] cursor-pointer text-xs font-mono',
                  [text('✕')],
                ),
              ],
            ),

            // Image Preview Area
            div(
              classes:
                  'p-6 bg-[#000000] flex-1 flex items-center justify-center min-h-[380px] max-h-[65vh] overflow-hidden relative',
              [
                img(
                  src: activeUrl,
                  alt: '${project.title} screenshot',
                  classes:
                      'max-h-[60vh] max-w-full object-contain rounded-lg shadow-2xl',
                ),

                if (images.length > 1) ...[
                  button(
                    events: {
                      'click': (_) {
                        setState(() {
                          _lightboxImageIndex =
                              (_lightboxImageIndex - 1 + images.length) %
                                  images.length;
                        });
                      }
                    },
                    classes:
                        'absolute left-4 top-1/2 -translate-y-1/2 w-10 h-10 rounded-full bg-black/70 hover:bg-black text-white border border-white/20 flex items-center justify-center cursor-pointer text-sm font-mono backdrop-blur-sm',
                    [text('←')],
                  ),
                  button(
                    events: {
                      'click': (_) {
                        setState(() {
                          _lightboxImageIndex =
                              (_lightboxImageIndex + 1) % images.length;
                        });
                      }
                    },
                    classes:
                        'absolute right-4 top-1/2 -translate-y-1/2 w-10 h-10 rounded-full bg-black/70 hover:bg-black text-white border border-white/20 flex items-center justify-center cursor-pointer text-sm font-mono backdrop-blur-sm',
                    [text('→')],
                  ),
                ],
              ],
            ),

            // Caption & Tech Stack
            div(
              classes:
                  'px-6 py-4 bg-[#121214] border-t border-white/[0.08] flex flex-wrap items-center justify-between gap-4 text-xs font-mono text-[#71717A]',
              [
                span([text(project.tagLine)]),
                div(
                  classes: 'flex gap-2',
                  project.techStack.take(3).map((t) => span(classes: 'text-[#A1A1AA]', [text('#$t')])).toList(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

