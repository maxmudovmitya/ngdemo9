import 'package:flutter/material.dart';

class ThemeColor extends InheritedWidget {
  final Color color;

  const ThemeColor({Key? key, required this.color, required Widget child})
      : super(child: child, key: key);

  @override
  bool updateShouldNotify(ThemeColor oldWidget) {
    return color != oldWidget.color;
  }

  static ThemeColor? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeColor>();
  }
}