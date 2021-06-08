import 'package:flutter/material.dart';

class NewsAndEvents extends StatefulWidget {
  @override
  _NewsAndEventsState createState() => _NewsAndEventsState();
}

class _NewsAndEventsState extends State<NewsAndEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
        child: Text('News And Events')
      ),
      ),
    );
  }
}