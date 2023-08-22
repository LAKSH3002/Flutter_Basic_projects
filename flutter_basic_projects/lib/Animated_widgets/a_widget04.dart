import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Awidget04 extends StatefulWidget {
  const Awidget04({super.key});

  @override
  State<Awidget04> createState() => _Awidget04State();
}

class _Awidget04State extends State<Awidget04> with TickerProviderStateMixin 
{
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState()
  {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose()
  {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          if(_isPlay == false){
            _controller.forward();
            _isPlay = true;
          }
          else{
            _controller.reverse();
            _isPlay = false;
          }
        },
        child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: _controller, size: 100),
      ),
    );
  }
}