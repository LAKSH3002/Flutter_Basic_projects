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
  double _opacity = 1;
  Color _color = Colors.blue;
  double _width = 200;
  double _margin = 0;

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        duration: Duration(milliseconds: 900),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const SizedBox(height: 50,),

            ElevatedButton(
            onPressed: (){
              setState(() {
                _margin = 50;
              });
            },
            child: const Text("Animate Margin")),

             const SizedBox(height: 50,),

            ElevatedButton(
            onPressed: (){
              setState(() {
                _color = Colors.amber;
              });
            },
            child: const Text("Animate Color")),

             const SizedBox(height: 50,),

            ElevatedButton(
            onPressed: (){
              setState(() {
                _width = 300;
              });
            },
            child: const Text("Animate width")),

             const SizedBox(height: 50,),

             ElevatedButton(
            onPressed: (){
              setState(() {
                _opacity = 0;
              });
            },
            child: const Text("Animate Opacity")),

           AnimatedOpacity(
           opacity: _opacity,
           child: Text('Hide Me',style: TextStyle(color:Colors.white),),
           duration: Duration(seconds: 2))
            
          ],
        ),
        ),
      ),
    );
  }
}