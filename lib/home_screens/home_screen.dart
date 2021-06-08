import 'package:Bank/home_menus/loan_request.dart';
import 'package:Bank/home_menus/news_&_events.dart';
import 'package:Bank/home_menus/other_invest.dart';
import 'package:Bank/home_menus/support.dart';
import 'package:Bank/home_menus/withdrawal_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Bank/home_menus/acct_balance.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: <Widget>[
          Positioned(
                    top: 160,
                    left: 30,
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
            child: Container( 
                height: 40,
                width: 285,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                            color: Colors.blue[900],
                              width: 2.0
                                      ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100)), 
                ),
            ),
        ),
          ),
          Positioned(
                    top: 35,
                    left: 30,
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
            child: Container( 
                height: 40,
                width: 285,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)), 
                ),
            child: Center(
                child: Text('WPCCU Dashboard',  style: new TextStyle(fontSize: 15.0, color: Colors.white,fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),),
            ),
            ),
        ),
          ),
          Positioned(
            top: 80,
            left: 15,
                child: Container(
                height: 120,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(10), 
                ), 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [    
                    Padding(
                       child: RichText(
                         text: TextSpan( 
                           children: [
                           TextSpan(text: 'Good Morning\n\n', style: TextStyle(fontSize: 15.0,)),
                           
                           TextSpan(text: 'Nwankwo Chisom', style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w700)),
                         ]
                         ),
                       ),
                        padding: const EdgeInsets.all(25.0),
                      ),
                      
                    Padding(    
                    child: Container (
                      height: 50, width: 50,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                         color: Colors.white,
                         image: DecorationImage(
                           image: AssetImage('images/user_placeholder.jpg'),
                           fit: BoxFit.fill,
                         )
                       ),
                    ),
                    padding: EdgeInsets.only(right: 20.0, top:8.0),
                    )
                  ],
                     ),
                  ]
                ),
            ),
          ),
        Positioned(
          top: 200.0,
          child:Padding(
            padding: EdgeInsets.only(left:8.0), 
             child: Container(
                  child: Column(
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                          Padding(
                       child: RichText(
                         text: TextSpan( 
                           children: [
                           TextSpan(text: '  Acct Balance\n\n', style: TextStyle(fontSize: 15.0, color: Colors.blue, fontWeight: FontWeight.w100)),
                           
                           TextSpan(text: '₵', style: TextStyle(fontSize: 30.0, color: Colors.blue[900], fontWeight: FontWeight.w700)),

                           TextSpan(text: ' 6,778', style: TextStyle(fontSize: 30.0, color: Colors.blue[900], fontWeight: FontWeight.w300))
                         ]
                         ),
                       ),
                        padding: EdgeInsets.only(left:20.0, top: 25.0),
                      ),
                      
                      Padding(
                      padding: EdgeInsets.only(left: 120.0, top: 20.0),
                        child: Container(
                           child: Column( 
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                             children: <Widget> [
                                Container(
                                  height: 20,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen[100],
                                  ),
                              child: Icon(Icons.arrow_upward, color: Colors.green, size: 15.0,),
                              
                                 ),
                             Text('\n ₵4,667\n', style: TextStyle(fontSize: 12.0, color: Colors.green[500],)
                             )],
                             ),
                             SizedBox(width: 20.0),
                            Row( 
                              children: <Widget> [
                              Container(
                                  height: 20,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.red[100],
                                  ),
                              child: Icon(Icons.arrow_downward, color: Colors.red, size: 15.0,),
                                 ),
                              Text(' ₵3,864',style: TextStyle(fontSize: 12.0, color: Colors.red[500],),
                              ),
                              ],
                              ),
                              ],
                            )
                           ),
                        ),
                      ]
                    ),
                    Row(
                      children: <Widget> [
                        Padding(
                            padding: EdgeInsets.only(left:30.0, top: 30),
                            child: Container(
                              child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container( 
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(18)),
                                      border: Border.all(
                                        color: Colors.blue[900],
                                      width: 2.0
                                      )
                                    ),
                                    child: IconButton(icon: Icon(Icons.monetization_on, color: Colors.blue,), onPressed: ()=> Navigator.push(context, 
                                       MaterialPageRoute(
                                        builder: (_) => LoanRequest()
                                        )
                                        )
                                        ),
                                    ),
                                  Padding(padding: EdgeInsets.only(top:5.0),
                                 child: Text('Loan Request', style: TextStyle(color: Colors.blue[900], fontSize: 10.0),),
                                 ),
                                  Container(
                                   decoration: BoxDecoration(
                                     color: Colors.blue[900],
                                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),)
                                   ),
                                   height: 5.0,
                                   width: 57.0,
                                 ),
                              ],
                              )
                            ),
                          ),
                        Padding(
                          padding: EdgeInsets.only(left:50.0, top: 30.0),
                          child: Container(
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container( 
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                    border: Border.all(
                                      color: Colors.blue[900],
                                    width: 2.0
                                    )
                                  ),
                                  child: IconButton(icon: Icon(Icons.monetization_on, color: Colors.blue,), onPressed:()=> Navigator.push(context, 
                                       MaterialPageRoute(
                                        builder: (_) => Withdrawal()
                                        )
                                        )),
                                  ),
                                 Padding(padding: EdgeInsets.only(top: 5.0),
                                 child: Text(' Withdrawal', style: TextStyle(color: Colors.blue[900], fontSize: 10.0),),
                                 ),
                                  Container(
                                   decoration: BoxDecoration(
                                     color: Colors.blue[900],
                                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),)
                                   ),
                                   height: 5.0,
                                   width: 57.0,
                                 ),
                            ],
                            )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:50.0, top: 30),
                          child: Container(
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container( 
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                    border: Border.all(
                                      color: Colors.blue[900],
                                    width: 2.0
                                    )
                                  ),
                                  child: IconButton(icon: Icon(Icons.monetization_on, color: Colors.blue,), onPressed:()=> Navigator.push(context, 
                                       MaterialPageRoute(
                                        builder: (_) => AcctBalance()
                                        )
                                        )
                                  ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5.0),
                                 child: Text('Acct. Balance', style: TextStyle(color: Colors.blue[900], fontSize: 10.0),),
                                 ),
                                  Container(
                                   decoration: BoxDecoration(
                                     color: Colors.blue[900],
                                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),)
                                   ),
                                   height: 5.0,
                                   width: 57.0,
                                 ),
                            ],
                            )
                          ),
                        )
                      ],
                    ),
                    
                    Row(
                      children: <Widget> [
                        Padding(
                            padding: EdgeInsets.only(left:30.0, top: 30),
                            child: Container( 
                              child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container( 
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(18)),
                                      border: Border.all(
                                        color: Colors.blue[900],
                                      width: 2.0
                                      )
                                    ),
                                    child: IconButton(icon: Icon(Icons.monetization_on, color: Colors.blue,), onPressed:()=> Navigator.push(context, 
                                       MaterialPageRoute(
                                        builder: (_) => OtherInvest()
                                       )
                                        )
                                        ),
                                    ),
                                  Padding(padding: EdgeInsets.only(top:5.0),
                                 child: Text('Other Invest.', style: TextStyle(color: Colors.blue[900], fontSize: 10.0),),
                                 ),
                                 Container(
                                   decoration: BoxDecoration(
                                     color: Colors.blue[900],
                                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),)
                                   ),
                                   height: 5.0,
                                   width: 57.0,
                                 ),
                              ],
                              )
                            ),
                          ),
                        Padding(
                          padding: EdgeInsets.only(left:50.0, top: 30.0),
                          child: Container(
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container( 
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                    border: Border.all(
                                      color: Colors.blue[900],
                                    width: 2.0
                                    )
                                  ),
                                  child: IconButton(icon: Icon(Icons.monetization_on, color: Colors.blue,), onPressed: ()=> Navigator.push(context, 
                                       MaterialPageRoute(
                                        builder: (_) => NewsAndEvents()
                                       )
                                        )
                                        ),
                              ),
                                 Padding(padding: EdgeInsets.only(top: 5.0, ),
                                 child: Text('News & Events', style: TextStyle(color: Colors.blue[900], fontSize: 10.0),),
                                 ),
                                  Container(
                                   decoration: BoxDecoration(
                                     color: Colors.blue[900],
                                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),)
                                   ),
                                   height: 5.0,
                                   width: 62.0,
                                 ),
                            ],
                            )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:50.0, top: 30),
                          child: Container(
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container( 
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                    border: Border.all(
                                      color: Colors.blue[900],
                                    width: 2.0
                                    )
                                  ),
                                  child: IconButton(icon: Icon(Icons.monetization_on, color: Colors.blue,), onPressed:()=> Navigator.push(context, 
                                       MaterialPageRoute(
                                        builder: (context) => Support()
                                       )
                                        )
                                        ),
                                        ),

                                  Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                 child: Text('   Support', style: TextStyle(color: Colors.blue[900], fontSize: 10.0),),
                                 ),

                                 
                                 Container(
                                   decoration: BoxDecoration(
                                     color: Colors.blue[900],
                                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),)
                                   ),
                                   height: 5.0,
                                   width: 57.0,
                                 ),
                            ],
                            )
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, left: 25.0),
                    child:Text(
                      'WESTERN POWER COOPERATIVE\n                 CREDIT UNION',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[200], fontWeight: FontWeight.bold),
                ),
                    ),
                  ],
               )
             ),               
        ),
        ),
        ],
        ),
    );
  }
}