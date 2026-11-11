import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../models/project_model.dart';
import '../services/firebase_portfolio_service.dart';

class ProjectVaultGrid extends StatefulComponent {
  final Function(ProjectModel) onSelectProject;

  const ProjectVaultGrid({required this.onSelectProject, super.key});

  @override
  State<ProjectVaultGrid> createState() => _ProjectVaultGridState();
}

class _ProjectVaultGridState extends State<ProjectVaultGrid> {
  ProjectCategory _selectedCategory = ProjectCategory.all;

  @override
  Component build(BuildContext context) {
    final projects =
        FirebasePortfolioService.getProjectsByCategory(_selectedCategory);

    return section(
      id: 'vault',
      classes: 'py-24 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto w-full relative',
      [
        // Section Header
        div(classes: 'flex flex-col items-center text-center mb-12', [
          div(
            classes:
                'inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-mono font-semibold bg-indigo-500/10 text-indigo-400 border border-indigo-500/20 mb-3',
            [
              span(classes: 'text-indigo-400', [text('🗂️')]),
              text('FIREBASE REPOSITORY (portfolio-e3e4a)'),
            ],
          ),
          h2(
            classes:
                'text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-100 tracking-tight',
            [
              text('Mobile Engineering '),
              span(classes: 'text-gradient-blue', [text('Vault (25+ Apps)')]),
            ],
          ),
          p(
            classes:
                'mt-3 text-slate-400 text-sm sm:text-base max-w-2xl leading-relaxed',
            [
              text(
                'Comprehensive catalog of commercial applications architected, built, and deployed across international enterprise clients and startups. Click any project to inspect its phone frame screenshots and technical breakdown.',
              ),
            ],
          ),

          // Category Filter Pills
          div(
            classes:
                'flex flex-wrap items-center justify-center gap-2 sm:gap-3 mt-8',
            ProjectCategory.values.map((cat) {
              final isSelected = cat == _selectedCategory;
              return button(
                events: {
                  'click': (_) {
                    setState(() {
                      _selectedCategory = cat;
                    });
                  }
                },
                classes:
                    'px-4 py-2 rounded-xl text-xs sm:text-sm font-semibold transition-all duration-200 cursor-pointer ${isSelected ? 'bg-gradient-to-r from-sky-500 to-indigo-600 text-white shadow-lg shadow-sky-500/20 border-transparent' : 'bg-slate-900/80 text-slate-400 hover:text-slate-200 border border-slate-800 hover:border-slate-700'}',
                [text(cat.label)],
              );
            }).toList(),
          ),
        ]),

        // 25+ Projects Responsive Grid
        div(
          classes:
              'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8',
          projects.map((project) => _buildProjectCard(project)).toList(),
        ),
      ],
    );
  }

  Component _buildProjectCard(ProjectModel project) {
    return div(
      classes:
          'glass-card rounded-2xl overflow-hidden flex flex-col justify-between border border-slate-800/80 hover:border-sky-500/40 transition-all duration-300 group',
      [
        // Thumbnail & Storage Folder Header
        div(classes: 'relative w-full aspect-video bg-slate-950 overflow-hidden', [
          // Simulated phone screenshot image with fallback
          img(
            src: project.getImageUrl(0),
            alt: project.title,
            classes:
                'w-full h-full object-cover object-top opacity-80 group-hover:opacity-100 group-hover:scale-105 transition-all duration-500',
            attributes: {
              'loading': 'lazy',
              'onerror':
                  "this.onerror=null; this.src='data:image/svg+xml;utf8,<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"400\" height=\"225\" viewBox=\"0 0 400 225\"><rect width=\"100%\" height=\"100%\" fill=\"%230f172a\"/><text x=\"50%\" y=\"50%\" fill=\"%2338bdf8\" font-family=\"monospace\" font-size=\"14\" text-anchor=\"middle\" dominant-baseline=\"middle\">gs://portfolio-e3e4a.appspot.com/o/${project.folderName}</text></svg>';",
            },
          ),

          // Gradient overlay
          div(
            classes:
                'absolute inset-0 bg-gradient-to-t from-slate-950 via-transparent to-black/40 pointer-events-none',
            [],
          ),

          // Firebase Storage Path Badge
          div(
            classes:
                'absolute top-3 left-3 px-2 py-1 rounded-md text-[10px] font-mono font-medium bg-black/70 backdrop-blur-md text-sky-400 border border-white/10 flex items-center gap-1.5',
            [
              span(classes: 'text-indigo-400 text-xs', [text('📁')]),
              text('o/${project.folderName}'),
            ],
          ),

          // Category Pill
          div(
            classes:
                'absolute top-3 right-3 px-2 py-1 rounded-md text-[10px] font-mono font-bold bg-slate-900/80 backdrop-blur-md text-slate-300 border border-slate-700',
            [text(project.category.label.split(' ')[0])],
          ),
        ]),

        // Content Body
        div(classes: 'p-5 flex flex-col flex-1 justify-between gap-4', [
          div(classes: 'flex flex-col gap-1.5', [
            h3(
              classes:
                  'text-lg font-bold text-slate-100 group-hover:text-sky-400 transition-colors',
              [text(project.title)],
            ),
            span(
              classes: 'text-xs font-mono text-sky-400/90 font-medium',
              [text(project.tagLine)],
            ),
            p(
              classes:
                  'text-xs text-slate-400 leading-relaxed mt-1 line-clamp-3',
              [text(project.description)],
            ),
          ]),

          // Tech stack tags
          div(
            classes: 'flex flex-wrap gap-1.5 pt-2 border-t border-slate-800/80',
            project.techStack.take(4).map((tech) {
              return span(
                classes:
                    'px-2 py-0.5 rounded text-[10px] font-mono bg-slate-900 text-slate-300 border border-slate-800',
                [text(tech)],
              );
            }).toList(),
          ),

          // Action Button: Open Modal
          button(
            events: {'click': (_) => component.onSelectProject(project)},
            classes:
                'w-full py-2.5 rounded-xl text-xs font-semibold font-mono bg-slate-800 hover:bg-sky-500/20 text-slate-200 hover:text-sky-300 border border-slate-700/80 hover:border-sky-500/40 transition-all flex items-center justify-center gap-2 cursor-pointer shadow-sm',
            [
              span(classes: 'text-sky-400', [text('📱')]),
              text('Inspect App & Screens'),
            ],
          ),
        ]),
      ],
    );
  }
}
