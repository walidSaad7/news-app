import 'package:flutter/material.dart';
import 'package:news/category_detalis_screen.dart';
import 'package:news/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      routes: {
        HomeScrren.routName:(buildContext)=>HomeScrren(),

      },
      initialRoute:HomeScrren.routName ,
    );
  }
}


