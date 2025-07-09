import 'package:flutter/material.dart';
import 'package:landscape_tab_view/landscape_tab_view.dart';

void main() {
  runApp(LandscapeTabView(width: 700, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landscape Tabview Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.orange)),
          Expanded(child: Container()),
          Expanded(child: Container(color: Colors.green)),
        ],
      ),
    );
  }
}
