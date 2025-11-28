import 'package:flutter/material.dart';
import 'package:portafolio/pages/home_page.dart';
import 'package:portafolio/pages/project_section_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Alexander',
      home: const HomePage(),
      routes: {'/projects': (context) => ProjectSectionPage()},
    );
  }
}
