import 'package:flutter/material.dart';

class MemberSavings extends StatefulWidget {
  @override
  _MemberSavingsState createState() => _MemberSavingsState();
}

class _MemberSavingsState extends State<MemberSavings> {

  //String _tea = 'of lagos';
  DateTime _dueDate = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return new Column(
        children:[
          Padding(
            padding: const EdgeInsets.only(top:0, left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
                height: 120,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                      Row(
                          children: <Widget> [
                              Padding(
                           child: RichText(
                             text: TextSpan( 
                               children: [
                               TextSpan(text: 'MS BALANCE\n\n', style: TextStyle(fontSize: 15.0, color: Colors.blue[900], fontWeight: FontWeight.w700)),
                               
                               TextSpan(text: '₵', style: TextStyle(fontSize: 20.0, color: Colors.blue[900], fontWeight: FontWeight.w500)),

                               TextSpan(text: '103,463', style: TextStyle(fontSize: 20.0, color: Colors.blue[900], fontWeight: FontWeight.w300)),
                               TextSpan(text: '.59\n\n', style: TextStyle(fontSize: 20.0, color: Colors.blueGrey[300], fontWeight: FontWeight.w300)),
                               TextSpan(text: '$_dueDate', style: TextStyle(fontSize: 10.0, color: Colors.blueGrey[400], fontWeight: FontWeight.w300))
                             ]
                             ),
                           ),
                            padding: EdgeInsets.only(left:20.0, top: 10.0),
                          ),
                          
                          Padding(
                          padding: EdgeInsets.only(left: 80.0, top: 10.0),
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
                                        color: Colors.blue[50],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                  child: Icon(Icons.credit_card, 
                                  color: Colors.blue[900], size: 15.0,),
                                     ),
                                RichText(
                             text: TextSpan( 
                               children: [
                               TextSpan(text: ' T', style: TextStyle(fontSize: 12.0, color: Colors.blueGrey, fontWeight: FontWeight.w700)
                               ),        
                               TextSpan(text: '1344',style: TextStyle(fontSize: 12.0, color: Colors.blueGrey,) )
                               ],
                                ),
                                  ),
                                  ],
                                ),

                                 Row(
                                 children: <Widget> [
                                    Container(
                                      height: 20,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.green[50],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                  child: Icon(Icons.arrow_upward, color: Colors.green, size: 15.0,),
                                     ),
                                 Text('\n ₵4,667\n', style: TextStyle(fontSize: 12.0, color: Colors.green[500],)
                                 )
                                  ],
                                 ),

                                Row( 
                                  children: <Widget> [
                                  Container(
                                      height: 20,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.red[50],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                  child: Icon(Icons.arrow_downward, color: Colors.red, size: 15.0,),
                                     ),
                                  Text(' ₵3,864',style: TextStyle(fontSize: 12.0, color: Colors.red[500],),
                                  ),
                                  ],
                                ),
                               ],
                               ),
                            ),
                          ),
                          ],
                      ),
                  ],
              ),
            ),
          ),

        Padding(
          padding: EdgeInsets.only(top: 30, left:10, right:10,),
          child: Container(
            height: 40,
            width: 320,
            color: Colors.blueGrey[50],
              child: Row(
                children: [
                  Column(
                    children: [
                  
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                    ),
                    height: 40,
                    width: 5,
                  ),
                ),
                    ]
                  ),

              Column( 
                children:[
              Padding(padding: EdgeInsets.only(left: 5, right: 5, top: 15),
              child: Text('TRANSACTION HISTORY', style: TextStyle(color: Colors.blue[900], fontSize: 14.0, fontWeight: FontWeight.w700)
              ),
              ),
              ],
              ),

             Column(
                 children: [
                   Padding(padding: EdgeInsets.only(left:10, top: 10),
                    child: Container(
                      height: 15,
                      width: 40,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                     border: Border.all(
                          color: Colors.blue[900],
                              width: 1.0
                            ),
                      borderRadius: BorderRadius.circular(3),
                      ),
                      child: RaisedButton(onPressed: null,
                      color: Colors.blueGrey[50],
                      disabledColor: Colors.blueGrey[50],
                       child: Text('Month', style: TextStyle(color: Colors.blue[900], fontSize: 10.0)),
                        padding: EdgeInsets.only(top:0, bottom:0, left: 0),
                      ),
                    )
              ),
                 ],
               ),

              

               Column(
                 children: [
                   Padding(padding: EdgeInsets.only(top:10),
                    child: Container(
                      height: 15,
                      width: 30,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                     border: Border.all(
                          color: Colors.blue[900],
                              width: 1.0
                            ),
                      borderRadius: BorderRadius.circular(3),
                      ),
                      child: RaisedButton(onPressed: null,
                      color: Colors.blueGrey[50],
                      disabledColor: Colors.blueGrey[50],
                       child: Text('Year', style: TextStyle(color: Colors.blue[900], fontSize: 10.0)),
                        padding: EdgeInsets.only(top:0, bottom:0, left: 0),
                      ),
                    )
              ),
                 ],
               ),

              Column(
                 children: <Widget> [
                   Padding(padding: EdgeInsets.only(top:10, left: 5, bottom: 0),
                    child: Container(
                      height: 15,
                      width: 20,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(top:0, bottom: 0),
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.blue[900], width:3.0),
                        bottom: BorderSide(color: Colors.blue[900], width: 2.0))
                            ),
                      child:  IconButton(icon: Icon(Icons.arrow_drop_up), iconSize: 15.0,  disabledColor: Colors.blue[900], color: Colors.blue[900], 
                      padding: EdgeInsets.only(top:0, bottom: 5, left: 0, right: 0), 
                      onPressed: null ),
                      ),
                      )
                 ],
               ),
                    ],
                  ),
              ),
          ),
        ],
    );
  }
}


                             