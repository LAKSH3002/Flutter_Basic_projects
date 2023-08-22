import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:async';

void main()
{
  runApp(const Awidget06());
}

class Awidget06 extends StatefulWidget 
{
  const Awidget06({super.key});

  @override
  State<Awidget06> createState() => _Awidget06State();
}

class _Awidget06State extends State<Awidget06> with SingleTickerProviderStateMixin
{
  bool _isPressed = false;
  late Widget _animatedModelBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  void initState()
  {
    ColorTween _colortween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5) ,
      end: Colors.blueGrey.withOpacity(0.5),
    );

    _animationController = AnimationController(vsync: this,
    duration: const Duration(seconds: 3));
    _colorAnimation = _colortween.animate(_animationController);

    _animatedModelBarrier = AnimatedModalBarrier(color: _colorAnimation,
    dismissible: true,);
    super.initState();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Center(
    child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 100.0,width: 250.0,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
              ),
            onPressed: (){
              setState(() {
                _isPressed = true;
              });
              _animationController.reset();
              _animationController.forward();
              Future.delayed(const Duration(seconds: 3),(){
                setState(() {
                  _isPressed = false;
                });
              });
            },
            child: Text('Press')),
            if(_isPressed) _animatedModelBarrier,
          ],
        ),)
      ],
    ),),);
  }
}

/* Errors in
1 - AnimatedModalBarrier
2 - AnimatedCrossFade
3 - AnimatedList
*/