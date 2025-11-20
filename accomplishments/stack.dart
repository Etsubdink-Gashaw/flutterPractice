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
      home: SampleStack(),
    );
  }
}

class SampleStack extends StatefulWidget {
  const SampleStack({super.key});

  @override
  State<SampleStack> createState() => _SampleStackState();
}


class _SampleStackState extends State<SampleStack> {
 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget'),
        backgroundColor: const Color.fromARGB(255, 142, 142, 142),
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 104, 104, 104),
      body: Card(
        child:Padding(padding:  const EdgeInsets.all(16.0),

        child: Stack(
        alignment: AlignmentDirectional.topStart,
        fit: StackFit.loose,
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
          ),),
          Container(
            width: 400,
            height: 300,
            decoration: BoxDecoration(
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),child:Center(
              child: Text('Jay from Enhypen',
            textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
          ),)
             
          
            ),
          Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 80,
            height: 60,
            
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              image: DecorationImage(
              image: AssetImage("assets/jay4.jpg"),
              fit: BoxFit.fitWidth,
             // alignment: Alignment.topCenter,
            ),
            ),
            child: Text('',
                style: TextStyle(color: Colors.white, fontSize: 12),
          )

          ))
        ],
      )),),
    );
  }
}