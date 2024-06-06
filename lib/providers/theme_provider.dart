import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_provider.g.dart';

@riverpod
class ThemeProvider extends _$ThemeProvider {
  @override
  ThemeData build() {
    return ThemeData.light();
  }

  void setLightTheme() {
    state = ThemeData.light();
  }

  void setDarkTheme() {
    state = ThemeData.dark();
  }

  void toggleTheme() {
    if (state.brightness == Brightness.light) {
      state = ThemeData.dark();
    } else {
      state = ThemeData.light();
    }
  }

  bool get isDarkMode {
    return state.brightness == Brightness.dark;
  }
}
