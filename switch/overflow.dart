import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Bottom Navigation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: true),
      home: SampleLayoutBuilder(),
    );
  }
}

class SampleLayoutBuilder extends StatelessWidget {
  const SampleLayoutBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIMITED BOX'),
        backgroundColor: const Color.fromARGB(255, 142, 142, 142),
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 197, 197, 197),
      body: Center(
        child: OverflowBox(
          maxHeight: 500,
          minHeight: 200,
          maxWidth: 500,
          minWidth: 200,
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(colors: [Colors.blue, Colors.red]),
            ),
          ),
        ),
      ),
    );
  }
}
