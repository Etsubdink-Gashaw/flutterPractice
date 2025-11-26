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
      home: SampleIndexedStack(),
    );
  }
}

class SampleIndexedStack extends StatefulWidget {
  const SampleIndexedStack({super.key});

  @override
  State<SampleIndexedStack> createState() => _SampleIndexedStackState();
}

class _SampleIndexedStackState extends State<SampleIndexedStack> {
  int _currentIndex = 0;
  void _nextImage() {
    setState(() {
      if (_currentIndex < 2) {
        _currentIndex++; // Increment index if not at the last child
      }
    });
  }

  // Method to go to the previous image
  void _previousImage() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--; // Decrement index if not at the first child
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indexed Stack Example'),
        backgroundColor: const Color.fromARGB(255, 142, 142, 142),
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 104, 104, 104),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IndexedStack(
                alignment: AlignmentDirectional.topStart,
                index: _currentIndex,
                children: [
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/jay2.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        '',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                     width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/jay3.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                  width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/jay4.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: _previousImage,
                      iconSize: 32,
                      color: const Color.fromARGB(255, 223, 11, 11),
                    ),
                    SizedBox(width: 16),
                    // Next Button
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: _nextImage,
                      iconSize: 32,
                      color: const Color.fromARGB(255, 224, 20, 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
