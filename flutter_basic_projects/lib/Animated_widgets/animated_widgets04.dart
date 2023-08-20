import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main(List<String> args) {
  runApp(const Animatedwidget04());
}
class Animatedwidget04 extends StatefulWidget {
  const Animatedwidget04({super.key});

  @override
  State<Animatedwidget04> createState() => _Animatedwidget04State();
}

class _Animatedwidget04State extends State<Animatedwidget04> 
{
  bool _bool = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 100,),

        TextButton(onPressed: (){
          setState(() {
            _bool = !_bool;
          });
        }, child: const Text("Switch",
        style: TextStyle(color: Colors.white),)),
        AnimatedCrossFade(
        firstChild: Image.asset(
          'assets/images/Souled_store.jpg',
          width: double.infinity,
        ), 
        secondChild: Image.asset(
          'assets/images/vector_ecommerce.jpg',
          width: double.infinity,
        ), 
        crossFadeState: _bool ? CrossFadeState.showFirst: CrossFadeState.showSecond, 
        duration: const Duration(seconds: 1))
      ],
    );
  }
}