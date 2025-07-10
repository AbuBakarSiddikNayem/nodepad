import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notepad/src/Components/my_settings_tile.dart';
import 'package:notepad/src/Theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("S E T T I N G S"),
        centerTitle: true,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
      ),
      body: Column(
        children: [
          MySettingsTitle(
            title: "Dark Mode",
            action: CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context).isDarkMode,
              onChanged: (value) {
                Provider.of<ThemeProvider>(
                  context,
                  listen: false,
                ).toggleTheme(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
