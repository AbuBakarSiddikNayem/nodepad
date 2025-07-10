import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier, WidgetsBindingObserver {
  ThemeProvider() {
    WidgetsBinding.instance.addObserver(this);
    _updateFromSystem(); // initial check
  }

  ThemeMode _themeMode = ThemeMode.system;
  bool _userOverride = false;

  ThemeMode get themeMode => _themeMode;

  bool get isDarkMode {
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    if (_themeMode == ThemeMode.system) {
      return brightness == Brightness.dark;
    }
    return _themeMode == ThemeMode.dark;
  }

  void toggleTheme(bool isDark) {
    _userOverride = true;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void resetToSystemTheme() {
    _userOverride = false;
    _themeMode = ThemeMode.system;
    notifyListeners();
  }

  bool get isUserOverride => _userOverride;

  void _updateFromSystem() {
    final systemBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    final isSystemDark = systemBrightness == Brightness.dark;

    // If in override mode but now user set app theme equal to system theme
    if (_userOverride &&
        ((_themeMode == ThemeMode.dark && isSystemDark) ||
            (_themeMode == ThemeMode.light && !isSystemDark))) {
      _userOverride = false;
      _themeMode = ThemeMode.system;
      notifyListeners();
    }
  }

  @override
  void didChangePlatformBrightness() {
    _updateFromSystem();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

