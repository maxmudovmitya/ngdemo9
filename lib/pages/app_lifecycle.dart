import 'package:flutter/material.dart';
import 'package:ngdemo9/pages/widget_lifecycle_page.dart';
import 'package:url_launcher/url_launcher.dart';

class AppLifecyclePage extends StatefulWidget {
  const AppLifecyclePage({super.key});

  @override
  State<AppLifecyclePage> createState() => _AppLifecyclePageState();
}

class _AppLifecyclePageState extends State<AppLifecyclePage>
    with WidgetsBindingObserver {
  callWidgetLifecyclePage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return WidgetLifecyclePage();
    }));
  }

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse('https://flutter.dev');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        print("AppLifecycleState.resumed");
        break;
      case AppLifecycleState.paused:
        print("AppLifecycleState.paused");
        break;
      case AppLifecycleState.detached:
        print("AppLifecycleState.detached");
        break;
      case AppLifecycleState.hidden:
        print("AppLifecycleState.hidden");
        break;
      case AppLifecycleState.inactive:
        print("AppLifecycleState.inactive");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("AppLifecycle Page"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            //callWidgetLifecyclePage();
            _launchUrl();
          },
          child: Text("Open"),
        ),
      ),
    );
  }
}
