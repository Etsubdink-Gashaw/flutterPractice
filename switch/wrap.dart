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
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: const Text('Custom Appbar'),
          backgroundColor: const Color.fromARGB(255, 142, 142, 142),
          elevation: 4,
        ),
      ),

      body: Wrap(

        alignment: WrapAlignment.spaceAround,
        runAlignment: WrapAlignment.spaceBetween,
        direction: Axis.vertical,
        spacing: 20,
        runSpacing: 20,

        children: List.generate(8, (index) {
          return Container(
            alignment: Alignment.center,
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(  10),),
            child: Text('${index + 1}'),
          );
        }),
      ),
    );
  }
}
