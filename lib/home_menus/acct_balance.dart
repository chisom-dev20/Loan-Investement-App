import 'package:Bank/acct_balance_screens/members_savings.dart';
import 'package:Bank/acct_balance_screens/shares.dart';
import 'package:Bank/acct_balance_screens/withdrawable_savings.dart';
import 'package:flutter/material.dart';

class AcctBalance extends StatefulWidget {
  @override
  _AcctBalanceState createState() => _AcctBalanceState();
}

class _AcctBalanceState extends State<AcctBalance> with SingleTickerProviderStateMixin {

  TabController _tabController;


int nTabs;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3 );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.blue[900]
          ),
        title: 
        Padding(
          padding: EdgeInsets.only(left:40),
          child: Text('Account Balance', textAlign: TextAlign.center, style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),),
          ),
          elevation: 0.7,
          ),
         body: new Column( 
                children: [
              Padding(
                  padding: const EdgeInsets.only(left:10.0, right: 10),
                child: Material(
                  child: Container(    
                  height: 70,
                  decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                    child: new TabBar(
                    controller: _tabController,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    indicatorColor: Colors.white,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    labelPadding: EdgeInsets.zero,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      new Tab(text: 'Member\nSavings',  
                      ),
                      new Tab(text: 'Shares'
                      ),
                      new Tab(text: 'Withdrawable\n    Savings'),
                    ],
        ),
                  ),
                ),
              ),
            
            Expanded(
                    child: TabBarView(
                    controller: _tabController,
                    children: [
                      MemberSavings(),
                      Shares(),
                      WithdrawableSavings(),
                  ],
                  ),
            )
                   ],
          ),
                    );
  }
}