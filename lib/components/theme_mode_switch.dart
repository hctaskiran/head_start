import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:head_start/theme/theme_mods/bloc/theme_bloc.dart';
import 'package:head_start/theme/theme_mods/bloc/theme_event.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, themeData) {
        return ListTile(
          title: const Text('Theme', style: TextStyle(fontSize: 18)),
          leading: const Icon(Icons.palette_outlined),
          subtitle: Text(themeData == ThemeData.dark() ? 'Current Theme: Dark' : 'Current Theme: Light',
              style: const TextStyle(fontSize: 12)),
          trailing: CupertinoSwitch(
            value: themeData == ThemeData.dark(),
            onChanged: (bool val) {
              context.read<ThemeBloc>().add(ThemeSwitchEvent());
            },
          ),
        );
      },
    );
  }
}
