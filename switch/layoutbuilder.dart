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
      theme:ThemeData(
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(fontSize: 20),
      bodySmall: TextStyle(fontSize: 10),

      titleLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 22),
      titleSmall: TextStyle(fontSize: 20),

      labelLarge: TextStyle(fontSize: 18),
    ),

    // Optional: apply a global font family
    fontFamily: 'Roboto',
  ),
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
        title: const Text('Indexed Stack Example'),
        backgroundColor: const Color.fromARGB(255, 142, 142, 142),
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 104, 104, 104),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[ Colors.purple, Colors.pink ],
              ),
            ),
            child: Center(
              
              child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  width>250? Icons.desktop_windows : Icons.phone_android,
                ),
                Text( width>250?
                'desktop layout width: $width height: $height': 'mobile layout width: $width height: $height'
                ),

              ],
            ),),
          );
        },
      ),
    );
  }
}
