import 'package:flutter/material.dart';

void main() {
  runApp(const EmbeddedApp());
}

class EmbeddedApp extends StatelessWidget {
  const EmbeddedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Embedded App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(title: Text("item $index")),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 30,
        ),
      ),
    );
  }
}
