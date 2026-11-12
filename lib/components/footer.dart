import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../services/firebase_portfolio_service.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(
      classes: 'py-16 text-left',
      [
        div(
          classes:
              'site-container flex flex-col sm:flex-row justify-between items-start sm:items-center gap-6 text-xs text-[#71717A] font-mono',
          [
            div(classes: 'flex flex-col gap-1', [
              span(classes: 'text-[#F4F4F5] font-semibold font-sans text-sm', [text('Himanshu Khare')]),
              span([text('Senior Mobile App Developer • Delhi NCR, India')]),
            ]),

            div(classes: 'flex flex-wrap items-center gap-6', [
              a(
                href: 'mailto:himanshukhare43071@gmail.com',
                classes: 'hover:text-[#F4F4F5] transition-colors text-decoration-none',
                [text('Email')],
              ),
              a(
                href: 'https://github.com/himanshu-khare',
                target: Target.blank,
                classes: 'hover:text-[#F4F4F5] transition-colors text-decoration-none',
                [text('GitHub')],
              ),
              a(
                href: 'https://tawftapp.github.io/',
                target: Target.blank,
                classes: 'hover:text-[#F4F4F5] transition-colors text-decoration-none',
                [text('Tawft UI')],
              ),
              a(
                href: FirebasePortfolioService.resumePdfUrl,
                target: Target.blank,
                classes: 'hover:text-[#F4F4F5] transition-colors text-decoration-none',
                [text('Resume PDF')],
              ),
              span(classes: 'text-[#52525B]', [text('@appdevwithhimanshu')]),
            ]),
          ],
        ),
      ],
    );
  }
}
