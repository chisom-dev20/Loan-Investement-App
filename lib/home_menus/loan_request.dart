import 'package:flutter/material.dart';

class LoanRequest extends StatefulWidget {
  @override
  _LoanRequestState createState() => _LoanRequestState();
}

class _LoanRequestState extends State<LoanRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      child: Center(
        child: Text('Loan Request'),
      ), 
    )
    );
  }
}