import 'package:flutter/material.dart';

class StatScreen extends StatefulWidget {
  @override
  _StatScreenState createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: new Container(
     child: Center( child: Text('Stats Screen'),
      ),
    )
    );
  }
}