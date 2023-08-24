import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main(List<String> args) {
  runApp(const Awidget07());
}

class Awidget07 extends StatefulWidget 
{
  const Awidget07({Key? key}) : super(key: key);

  @override
  State<Awidget07> createState() => _Awidget07State();
}

class _Awidget07State extends State<Awidget07> 
{
  double _size = 100;

  @override
  Widget build(BuildContext context) 
  {
    return GestureDetector(
      onTap: (){
        setState(() {
          _size = _size == 100 ? 50 : 100;
        });
      },
      child: Container(
        color: Colors.white,
        child: AnimatedSize(
        curve: Curves.easeIn,
        duration: const Duration(seconds: 1),
        child: FlutterLogo(size: _size,),),
      ),
    );
  }
}