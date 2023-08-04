import 'package:flutter/material.dart';

class DPage1 extends StatelessWidget {
  const DPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.teal,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            )));
  }
}
