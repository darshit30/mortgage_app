import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Help")),
      body: Text("Help"),
    );
  }
}
