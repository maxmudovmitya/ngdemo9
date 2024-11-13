import 'package:flutter/material.dart';
import 'package:ngdemo9/widgets/theme_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final color = ThemeColor.of(context)?.color ?? Colors.grey;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text("Home Page"),
      ),
      body: Center(),
    );
  }
}
