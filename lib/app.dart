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
      classes: 'antialiased selection:bg-white/20 selection:text-white',
      [
        const HomePage(),
      ],
    );
  }
}
