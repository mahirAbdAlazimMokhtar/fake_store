import 'package:flutter/material.dart';

import '../presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget{
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal(); //singleton or single const
  factory MyApp() => _instance;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
  
}
class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
  
}