import 'package:flutter/material.dart';
import 'package:head_start/components/theme_mode_switch.dart';

class GoThemeSelector extends StatelessWidget {
  const GoThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          ThemeSwitch(),
        ],
      ),
    );
  }
}
