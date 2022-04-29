import 'package:flutter/material.dart';
import 'package:mortgage_app/Screens/home_screen.dart';
import 'package:mortgage_app/Screens/options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  //var isChecked = false;

  @override
  Widget build(BuildContext context) {
    // var defaultcolor = Color(0xFFfd796b);
    //var defaultcolor = Color(0X4B72FF);
    //var defaultcolor = Color(0xF791518);
    //var defaultcolor = Color(0XF7DDDC);
    // var defaultcolor = Color(0xFFfd796b);
    var defaultcolor = Color(0xFF29b6f6);
    // var defaultcolor = Colors.orange;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
