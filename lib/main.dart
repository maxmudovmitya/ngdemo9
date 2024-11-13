import 'package:flutter/material.dart';
import 'package:ngdemo9/pages/app_lifecycle_page.dart';
import 'package:ngdemo9/pages/home_page.dart';
import 'package:ngdemo9/pages/widget_types_page.dart';
import 'package:ngdemo9/widgets/theme_color.dart';

// 1- Widget Lifecycle
// 2- App Lifecycle
// 3- Widget Types (Stateless Widget, Stateful Widget, Inherited Widget)
// 4- Key Types

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeColor(
        color: Colors.black,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: HomePage(),
        )
    );
  }
}
