import 'package:animation/screen/Homepage.dart';
import 'package:animation/task2/view/Screen/Homescreen.dart';
import 'package:animation/task2/view/Screen/detail_pae.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        '/' : (context) => HomeScreen(),
       '/detail' : (context) =>  DetailsScreen(),
     },
    );
  }
}
