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
    title: 'Himanshu Khare — Senior Mobile Developer (Flutter • Android • iOS)',
    lang: 'en',
    meta: {
      'description':
          'Himanshu Khare — Senior Mobile Developer with 6.5+ years experience building production apps across Flutter, Android (Kotlin), and iOS (Swift). Offline-first SSOT, Dart Isolates, binary Protobuf streaming, and native Bluetooth hardware.',
      'viewport': 'width=device-width, initial-scale=1.0',
      'theme-color': '#0A0A0A',
      'author': 'Himanshu Khare',
      'og:title': 'Himanshu Khare — Senior Mobile Developer',
      'og:description':
          'Senior Mobile Developer building offline-first Flutter & native apps.',
      'og:type': 'website',
      'og:url': 'https://himanshu-khare.github.io/',
    },
    head: [
      script(src: 'https://cdn.tailwindcss.com'),
      link(rel: 'stylesheet', href: 'styles.css?v=3.1'),
      link(rel: 'icon', href: 'favicon.ico'),
    ],
    body: const App(),
  ));
}
