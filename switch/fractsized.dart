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

 const SampleLayoutBuilder ({super.key});
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
        width: 300,
        height: 300,
        decoration: BoxDecoration(
         gradient: LinearGradient(
          colors: [ Colors.grey, Colors.black]),
         borderRadius: BorderRadius.circular(8),
        ),
        child: FractionallySizedBox(
          alignment: AlignmentGeometry.bottomCenter,
          widthFactor: 0.5,
          heightFactor: 0.8 ,
          child: Container(
            color: Colors.brown,
            child: Align(
              alignment: Alignment.centerLeft,
              child:Container(
              margin: EdgeInsets.all(8),
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),)
              )
            
          )
        ),


      )
      );
  }
}
