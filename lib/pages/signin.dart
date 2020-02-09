import 'package:flutter/material.dart';
import 'package:toppers_pakistan/pages/first.dart';
import 'package:toppers_pakistan/pages/forgot-password.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _validate = false;

  bool _validate2 = false;

TextEditingController numberEditingController = new TextEditingController();

  TextEditingController passwordEditingController =
      new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: ListView(padding: EdgeInsets.fromLTRB(15, 150, 15,0),
      children: <Widget>[
         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xff666666)),
  child:   TextField(
  
              controller: numberEditingController,
  style: TextStyle(color: Colors.white),
              decoration: new InputDecoration(
hoverColor: Colors.white,  
                  errorText: _validate ? "Number is required" : null,
  focusedBorder: new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),
                  enabledBorder:  new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),prefixIcon: Icon(Icons.mobile_screen_share,color: Colors.white,),border: InputBorder.none,
                hintText: "Number"),
  
              onChanged: (value) {
  
                setState(() {
  
                  numberEditingController.text.isEmpty
  
                      ? _validate = true
  
                      : _validate = false;
  
                });
  
              },
  
            ),
),
          SizedBox(
          height: 10,),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xff666666)),
  child:   TextField(
  
              controller:passwordEditingController,
  style: TextStyle(color: Colors.white),
              decoration: new InputDecoration(
hoverColor: Colors.white,  
                  errorText: _validate2 ? "Password is required" : null,
  focusedBorder: new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),
                  enabledBorder:  new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),prefixIcon: Icon(Icons.lock,color: Colors.white,),border: InputBorder.none,
                hintText: "Password"),
  
              onChanged: (value) {
  
                setState(() {
  
                  passwordEditingController.text.isEmpty
  
                      ? _validate2 = true
  
                      : _validate2 = false;
  
                });
  
              },
  
            ),
),
          SizedBox(
          height: 15,),

ButtonTheme(
                minWidth: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 15,
                child: RaisedButton(shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(28.0),
                ),
                  color: Color(0xffCE862A),
                  onPressed: () {


                    if(numberEditingController.text.isEmpty && passwordEditingController.text.isEmpty){

 setState(() {
               numberEditingController.text.isEmpty
                    ? _validate = true
                    : _validate = false;
              });
 setState(() {
                passwordEditingController.text.isEmpty
                    ? _validate2 = true
                    : _validate2 = false;
              });
              
                      
                    }
                else {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>First()));        

                      }     
                  },
                  child: Text("SIGN IN",
                      style:
                          TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400)),
                ),
              ),
          SizedBox(
          height: 5,),

Center(child: FlatButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgotPassword()));}, child: Text("Forgot Password?",style: TextStyle(color: Colors.white),)),)       
      ],
    ),
        
        );
  }
}
