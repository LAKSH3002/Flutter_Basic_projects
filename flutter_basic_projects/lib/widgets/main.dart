import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic_projects/new.dart';
import 'package:flutter_basic_projects/screens/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    
    SystemChrome.setSystemUIOverlayStyle(
     const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: Home(),
    );
  }
}