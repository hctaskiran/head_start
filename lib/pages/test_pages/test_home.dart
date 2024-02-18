import 'package:flutter/material.dart';
import 'package:head_start/pages/test_pages/language.dart';
import 'package:head_start/pages/test_pages/theme.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const Text('Theme Selector'),
            leading: const Icon(Icons.palette_outlined),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GoThemeSelector()));
            },
          ),
          ListTile(
            title: const Text('Language Selector'),
            leading: const Icon(Icons.language_outlined),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GoToLanguageSelector()));
            },
          ),
        ],
      ),
    );
  }
}
