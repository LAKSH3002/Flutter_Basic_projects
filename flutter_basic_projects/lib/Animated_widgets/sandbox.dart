import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// Creation of AnimatedConatiner and using buttons 

void main(List<String> args) {
runApp(Sandbox());  
}

class Sandbox extends StatefulWidget 
{
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> 
{
  double width = 10;
  double margin = 0;

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedContainer(
        duration: Duration(milliseconds: 900),
        child: Column(
          children: [
            ElevatedButton(
            onPressed: (){
              width = 20;
            },
            child: const Text("Animate Size"))
          ],
        ),
        ),
      ),
    );
  }
}