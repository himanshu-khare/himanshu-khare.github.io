import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'pages/home_page.dart';

@client
class App extends StatefulComponent {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  Component build(BuildContext context) {
    return div(
      classes: 'antialiased selection:bg-sky-500/30 selection:text-sky-300',
      [
        const HomePage(),
      ],
    );
  }
}
