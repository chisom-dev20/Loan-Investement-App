import 'package:flutter/material.dart';

class LookPage extends StatefulWidget {
  @override
  _LookPageState createState() => _LookPageState();
}

class _LookPageState extends State<LookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Take A look'
          )
        ),
    ), 
    );
  }
}