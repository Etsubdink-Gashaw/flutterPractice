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
        child:UnconstrainedBox(
        child:  LimitedBox(
        maxHeight: 1000,
        maxWidth: 2000,
        child: Container(
          width: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.white12],
            ),
          ),
          child: Text(' i am curious how well it handles dsts like what is so special about it yunno ah okay.',
          softWrap: true,
          overflow: TextOverflow.ellipsis,),
        ),
      ),
      )
      )
    );
  }
}
