import 'package:flutter/material.dart';
//import 'dart:math' as math;

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

class SampleLayoutBuilder extends StatefulWidget {
  const SampleLayoutBuilder({super.key});
  @override
  State<SampleLayoutBuilder> createState() => SampleLayoutBuilderState();
}

class SampleLayoutBuilderState extends State<SampleLayoutBuilder> {
  bool isOffstage=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: const Text('Custom Appbar'),
          backgroundColor: const Color.fromARGB(255, 142, 142, 142),
          elevation: 4,
        ),
      ),

      body: Center(
        child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Offstage(
            offstage: isOffstage,
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Image.asset('assets/jay4.jpg',
              fit: BoxFit.cover,),
              ),
          ),

          ElevatedButton(
            onPressed: ()=> setState(() => isOffstage= !isOffstage), 
            child: Text(isOffstage?'show':'hide'))
        ],
      ),
      )
    );
  }
}

