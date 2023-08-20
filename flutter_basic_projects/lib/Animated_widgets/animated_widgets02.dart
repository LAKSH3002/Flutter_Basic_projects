import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';

// AnimatedBuilder
// AnimatedConatiner
void main()
{
  runApp(const Animatedwidget02());
}

class Animatedwidget02 extends StatefulWidget 
{
  const Animatedwidget02({super.key});

  @override
  State<Animatedwidget02> createState() => _Animatedwidget02State();
}

class _Animatedwidget02State extends State<Animatedwidget02> with TickerProviderStateMixin
{
  late final AnimationController _controller = AnimationController(
  duration: const Duration(seconds: 10),  
  vsync: this,
  )..repeat();

  @override
  void dispose()
  {
  _controller.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Center(
    child: AnimatedBuilder(
      animation: _controller,
      child: const FlutterLogo(size: 100),
      builder: (context, child) {
        return Transform.rotate(angle: _controller.value*2.0*math.pi,
        child: child,);
      },
    ));
  }
}