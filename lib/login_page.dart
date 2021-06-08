import 'package:Bank/home_page.dart';
import 'package:Bank/take_a_look.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

   final formKey = new GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _autoValidate = false;
  String _staffId;
  String _password;

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save(); 
     return true;
      }
      else {
      return false;
      }
  }

  void collectDetails()
  {
    _staffId = _idController.text;
    _password = _passwordController.text;
  }

  void login()
  {
    _autoValidate = true;
    collectDetails();
    try{
      if(validateAndSave()){
        Navigator.push(context, 
        MaterialPageRoute(
            builder: (_) => HomePage()
        )
        );
      }
    }
      catch (e){
        print('Error: $e');
      }
    print('login');
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
                          child: SingleChildScrollView(
              child: Container(
        height: height,
        child: Stack(
                children : [
                Container(
                        height: 220,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(5), 
                          image: DecorationImage(image: AssetImage('images/bank.jpg'), fit: BoxFit.cover),
                      
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
                                   TextSpan(text: 'Up to\n\n', style: TextStyle(fontSize: 10.0,)),
                                   TextSpan(text: '40%\n\n\n\n', style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w400)),
                                   TextSpan(text: 'For Your Lovely Children\n\n',style: TextStyle(fontSize: 10.0, color: Colors.white,)),
                                   TextSpan(text: 'WPCCU Kiddy Loan', style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w500) )
                                 ]
                                 ),
                               ),
                                padding: const EdgeInsets.only(top:40.0, left: 30.0),
                              ),

                            Padding(  
                              padding: EdgeInsets.only(right: 20.0, top:40.0),  
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [  
                            Container (
                              height: 50, width: 50,
                              child: Image(image: AssetImage('images/user_placeholder.jpg'),
                                   fit: BoxFit.fill,
                                 )
                            ),
                            Padding(
                             child: Container(
                               width: 85.0,
                               height: 35.0,
                              child: RaisedButton(
                              onPressed: ()=> Navigator.push(context, 
                                               MaterialPageRoute(
                                                builder: (_) => LookPage()
                                                )
                                                ), 
                              color: Colors.white,
                              child: Center(
                                child: Text('Take a look', style: TextStyle(color: Colors.black, fontSize: 10.0),) )
                            ),
                             ),
                            padding: EdgeInsets.only(top:70.0),
                            )
                            ]
                            ),   
                            )
                          ],
                             ),
                          ]
                        ),
                ),

           
              Positioned(
            top: 330, left: 80,
            child: Container(
              height: 3,
              width: 220,
              decoration: BoxDecoration(
              
            color: Colors.blue[900],

          ),)),

          Positioned(
            top: 420, left: 80,
            child: Container(
              height: 3,
              width: 220,
              decoration: BoxDecoration(
              
            color: Colors.blue[900],

          ),)),


              Padding(
                    padding: EdgeInsets.only(left:50.0, top: 270, right: 50),  
                    child: Column(
                    children: [
              Form(
                key: formKey,
                   child: Column(
                      children: [
                 Container(
                  height: 60.0,
                  decoration: BoxDecoration(   
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blue[900],
                  ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Padding(padding: EdgeInsets.only(left:30, right:10,),
                child: TextFormField(
                  cursorColor: Colors.blue[900],
                  decoration: InputDecoration(hintText: 'Staff ID',  suffixIcon: Icon(Icons.person_outline, color: Colors.blue[900]),
                  hintStyle: TextStyle(fontSize:12.0,),
                   errorStyle: TextStyle(
                     fontSize: 10.0,
                     fontStyle: FontStyle.italic
                   ),
                errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red[900], width: 1.0),
            ),
            //  border: UnderlineInputBorder.,
            //  bo
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue[900], width: 1.0),
            )
                   ), 
                   
                  controller: _idController,
                  scrollPadding: EdgeInsets.all(10),
                  autovalidate: _autoValidate,
                  validator: (_emailController){
                 if ( _emailController.isEmpty){
                    return 'staff ID can\'t be empty';
                 }
                 return null;
                  }
                ),
                ),
                  ),
              
              SizedBox(height: 30,),
              Container(
                height: 60.0,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.blue[900],
                ),
                ),
                alignment: Alignment.bottomCenter,
                child: Padding(padding: EdgeInsets.only(left:30, right:10,),
              child: TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(hintText: 'Password', suffixIcon: Icon(Icons.lock_outline, color: Colors.blue[900]),
                hintStyle: TextStyle(fontSize:12.0),
                   errorStyle: TextStyle(
                     fontSize: 10.0,
                     fontStyle: FontStyle.italic
                   ),
                errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.0),
            ),
                focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue[900], width: 1.0),
            )
                   ), 
                  scrollPadding: EdgeInsets.all(10),
                  autovalidate: _autoValidate,
                validator: (_emailController) => _emailController.isEmpty ? 'Password can/t be empty' : null,
              ),
                ),
                ),
                   ]
                   ),
              ),
          
            Padding(padding: EdgeInsets.only(left: 130,),
                child: Container(
              child: FlatButton(onPressed: null, 
                  child: Text('Forgot Password?', style: TextStyle(color: Colors.blue[900], fontSize: 12),),),
           ),
            ),

          SizedBox(height: 30.0),
           Container(
            child:
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                    child: RaisedButton(
                    onPressed: login,
                    color: Colors.white,
                    child: Text('Log In', style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold)),
                ),
              ),
           ),

            SizedBox(height: 40.0),
            Divider(height: 10, color: Colors.grey,),
             Container(
             child: Padding(
               padding: EdgeInsets.only(left: 40.0),
                            child: Row(
                 children : [
                Text('Not a member yet?', style: TextStyle(fontSize: 12.0, color: Colors.black,)),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 0.0),
                      child: FlatButton(
                        onPressed: null,
                  child: Text('Join Us', style: TextStyle(fontSize: 15.0, color: Colors.red[700]),)),
                )
                 ],
                ),
             ),
             ),
             Divider(height: 10, color: Colors.grey,),
                  ],    
                )
             ),

             Positioned(
                      top: 263, left: 80,
                child:
                Container(
                  height: 15.0,
                  width: 40.0,
                  padding: EdgeInsets.only(),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Center(
                  child: Text('Staff ID', style: TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                ),
                ),
           ),
          
          Positioned(
            top: 540, left: 135,
            child: Container(
              height: 5,
              width: 90,
              decoration: BoxDecoration(
              
            color: Colors.blue[900],

          ),)),
           

            Positioned(
                      top: 351, left: 80,
                child:
                Container(
                  height: 15.0,
                  width: 50.0,
                  padding: EdgeInsets.only(),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Center(
                  child: Text('Password', style: TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                ),
                ),
           ),
             
                ],
        ),
      ),
                          )
      ), 
      ); 
      
  }
}