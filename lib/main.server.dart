library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(Document(
    title: 'Himanshu Khare | Senior Mobile Systems Architect (Flutter • Android • iOS)',
    lang: 'en',
    meta: {
      'description':
          'Senior Mobile Systems Architect with 6.5+ years experience building production apps across Flutter, Android (Kotlin), and iOS (Swift). Offline-first SSOT, Dart Isolates, binary Protobuf streaming, and native Bluetooth hardware.',
      'viewport': 'width=device-width, initial-scale=1.0',
      'theme-color': '#090D16',
      'author': 'Himanshu Khare',
      'og:title': 'Himanshu Khare | Senior Mobile Systems Architect',
      'og:description':
          '6.5+ Yrs Exp • 25+ Apps Shipped • Offline-First SSOT • Tawft UI (100+ Widgets)',
      'og:type': 'website',
      'og:url': 'https://himanshu-khare.github.io/',
    },
    head: [
      script(src: 'https://cdn.tailwindcss.com'),
      link(rel: 'stylesheet', href: 'styles.css'),
      link(rel: 'icon', href: 'favicon.ico'),
    ],
    body: const App(),
  ));
}
