import 'package:flutter/material.dart';

class WidgetTypesPage extends StatefulWidget {
  const WidgetTypesPage({super.key});

  @override
  State<WidgetTypesPage> createState() => _WidgetTypesPageState();
}

class _WidgetTypesPageState extends State<WidgetTypesPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Stateless vs Stateful Widgets"),
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
