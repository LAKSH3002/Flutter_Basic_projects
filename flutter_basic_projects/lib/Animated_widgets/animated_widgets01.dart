import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main(List<String> args) {
  runApp(const AnimatedWidget01());
}

class AnimatedWidget01 extends StatefulWidget 
{
  const AnimatedWidget01({super.key});

  @override
  State<AnimatedWidget01> createState() => _AnimatedWidget01State();
}

class _AnimatedWidget01State extends State<AnimatedWidget01> 
{
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
      child: Container(
      width: double.infinity,
      height: 250.0,
      color: Colors.blueGrey,
      child: AnimatedAlign(
      alignment: selected? Alignment.topRight : Alignment.bottomLeft,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      child: const FlutterLogo(size: 50.0,),
      ),)),
    );
  }
}

/*
Projects working well:
1) Basic stateless 
2) Basic stateless 2
3) Book my show
4) To Do App
5) Calculator
- All Running well
*/