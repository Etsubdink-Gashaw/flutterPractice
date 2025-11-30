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
      backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          title: const Text('Custom Appbar'),
          backgroundColor: const Color.fromARGB(255, 142, 142, 142),
          elevation: 4,
        ),
      ),

      body: Table(
        columnWidths: const {0: FractionColumnWidth(0.2)},
        children: [
          TableRow(children: []),
          TableRow(children: []),
          TableRow(children: []),
        ],
      ),
    );
  }
}
