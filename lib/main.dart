import 'package:flutter/material.dart';
import 'package:page404/l10n/l10n.dart';
import 'package:page404/pages/notfound_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page 404',
      debugShowCheckedModeBanner: false,
      supportedLocales: L10n.all,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NotFoundPage(),
    );
  }
}
