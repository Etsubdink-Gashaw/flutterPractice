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
      home: SampleAnimatedBuilder(),
    );
  }
}

class SampleAnimatedBuilder extends StatefulWidget {
  const SampleAnimatedBuilder({super.key});

  @override
  State<SampleAnimatedBuilder> createState() => _SampleAnimatedBuilderState();
}

class _SampleAnimatedBuilderState extends State<SampleAnimatedBuilder>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late AnimationController _scaleController;
  late AnimationController _colorController;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _colorController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(parent: _rotationController, curve: Curves.linear),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.elasticOut),
    );

    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red).animate(
      CurvedAnimation(parent: _colorController, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: const Text('Animated Builder'),
          backgroundColor: const Color.fromARGB(255, 142, 142, 142),
          elevation: 4,
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Center(
              child: AnimatedBuilder(
                animation: Listenable.merge([
                  _rotationAnimation,
                  _scaleAnimation,
                  _colorAnimation,
                ]),

                builder: (context, child) {
                  return Transform.rotate(
                    angle: _rotationAnimation.value * 3.14159,
                    child: Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: _colorAnimation.value,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  _colorAnimation.value?.withValues(
                                    alpha: 0.5,
                                  ) ??
                                  Colors.transparent,
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: child,
                      ),
                    ),
                  );
                },
                child: Icon(Icons.star, size: 50, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_rotationController.isAnimating) {
                      _rotationController.stop();
                    } else {
                      _rotationController.repeat();
                    }
                  },
                  child: Text('Rotate'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_scaleController.status == AnimationStatus.completed) {
                      _scaleController.reverse();
                    } else {
                      _scaleController.forward();
                    }
                  },
                  child: Text('Scale'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_colorController.status == AnimationStatus.completed) {
                      _colorController.reverse();
                    } else {
                      _colorController.forward();
                    }
                  },
                  child: Text('Color'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _rotationController.dispose();
    _scaleController.dispose();
    _colorController.dispose();
    super.dispose();
  }
}
