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
  final double base = 100;
  final TextBaseline type = TextBaseline.alphabetic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIMITED BOX'),
        backgroundColor: const Color.fromARGB(255, 142, 142, 142),
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 104, 104, 104),
      body: Container(
        width: 500,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 40,
              child: Baseline(
                baseline: base, 
                baselineType: type,
                child: Text('first'),),
            ),
            Positioned(
              
              child: Text('second')),
            Positioned(
              child:Baseline(baseline: base, baselineType: type,
              child: Container(color: Colors.deepPurple, height: 1, width: 4000),
              )
              
            ),
          ],
        ),
      ),
    );
  }
}