import 'package:flutter/material.dart';
import 'dart:async';

import 'login_page.dart';
//import 'package:Bank/login_page.dart';


void main() {
  runApp(MaterialApp (home:MyApp(),
  debugShowCheckedModeBanner: false,
      title: 'Bank App',
      theme: ThemeData(
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
  )
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
      seconds: 3),
      (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => LoginPage(),),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Stack(
      children: [
        // Positioned(
        //   top: 50.0,
        //   left: 30.0,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Padding(
        //       padding: EdgeInsets.all(10.0),
        //       child: Column(
        //       children: [
        //         Container(
        //           height: 10,
        //           width: 20,
        //           decoration: BoxDecoration(
        //           color: Colors.grey,)
        //         ),
        //         Container(
        //           padding: EdgeInsets.all(10.0),
        //           height: 30,
        //           width: 50,
        //           decoration: BoxDecoration(
        //           color: Colors.grey,)
        //         ),
          
        //       ]
        //     ),
        //       ),
        //   Padding(
        //     padding: EdgeInsets.all(10.0),
        //    child: Column(
        //       children: [
        //       Container(
        //           decoration:
        //           BoxDecoration(color: Colors.grey,
        //           ),
        //         ),
        //         Container(
        //           decoration: BoxDecoration(
        //           color: Colors.grey,
        //           ),
        //         ),
        //       ],
        //     )
        //   )
        //   ],
        //   ),
        // ),
        Positioned(
          top: 300,
          left: 50,

        child: 
        Row(children: <Widget>[
              Column(
                children: [
               Image(image: AssetImage('images/bank.jpg'), height: 40.0,)
                ]
            ),
            
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
               child: RichText(
              text: TextSpan( children: [
                TextSpan(
                  text: 'WPCCU\n', style: TextStyle(fontSize: 40.0, color: Colors.blue[900], fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'We are the happy family', style: TextStyle(fontSize: 15.0, color: Colors.red[200],))
              ]
              ),
              )
                ),
              ],
            )
        ],
        )
        ),
      ],
      ),
    );
  }
}


