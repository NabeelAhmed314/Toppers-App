import 'package:flutter/material.dart';
import 'package:toppers_pakistan/pages/signin.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

 bool _validate = false;

  bool _validate2 = false;

 bool _validate3 = false;

  bool _validate4 = false;

  TextEditingController usernameEditingController =
      new TextEditingController();
  TextEditingController numberEditingController = new TextEditingController();

  TextEditingController passwordEditingController =
      new TextEditingController();
  TextEditingController confirmEditingController = new TextEditingController();


    void _showalertdialog() {
    showDialog(
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            title: new Text("Successfull",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            content: Text("Your account has been created successfully.",style: TextStyle(fontSize: 18,),),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              FlatButton(
                child: new Text("OK",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                onPressed: () {
   Navigator.push(context,MaterialPageRoute(builder: (context)=>Signin()));
                },
              ),
            ],
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.black,body: ListView(padding: EdgeInsets.fromLTRB(15, 100, 15, 10), children: <Widget>[

Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xff666666)),
  child:   TextField(
  
              controller: usernameEditingController,
  style: TextStyle(color: Colors.white),
              decoration: new InputDecoration(
hoverColor: Colors.white,  
                  errorText: _validate ? "Name is required" : null,
  focusedBorder: new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),
                  enabledBorder:  new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),prefixIcon: Icon(Icons.person,color: Colors.white,),border: InputBorder.none,
                hintText: "Name"),
  
              onChanged: (value) {
  
                setState(() {
  
                  usernameEditingController.text.isEmpty
  
                      ? _validate = true
  
                      : _validate = false;
  
                });
  
              },
  
            ),
),
          SizedBox(
          height: 10,),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xff666666)),
                      child: new TextField(
      style: TextStyle(color: Colors.white),
              controller: numberEditingController,
              decoration: new InputDecoration(prefixIcon: Icon(Icons.mobile_screen_share,color: Colors.white,),border: InputBorder.none,
                  errorText: _validate2 ? "Number is required" : null,
                focusedBorder: new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),
                  enabledBorder:  new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),
                  hintText: "e.g 03654115465"),
              onChanged: (value) {
                setState(() {
                  numberEditingController.text.isEmpty
                      ? _validate2 = true
                      : _validate2 = false;
                });
              },
            ),
          ),
      SizedBox(height: 10,),    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xff666666)),
              child: TextField(style: TextStyle(color: Colors.white),
              controller: passwordEditingController,
              decoration: new InputDecoration(prefixIcon: Icon(Icons.lock,color: Colors.white,),border: InputBorder.none,
                  errorText: _validate3 ? "Password is required" : null,
                  focusedBorder: new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff666666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),
                  enabledBorder:  new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff666666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),



                hintText: "Password"),
              onChanged: (value) {
                setState(() {
                  passwordEditingController.text.isEmpty
                      ? _validate3 = true
                      : _validate3 = false;
                });
              },
            ),
      ),
          SizedBox(
          height: 10,),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xff666666)),
                      child: new TextField(style: TextStyle(color: Colors.white),
               obscureText: true,
              controller: confirmEditingController,
              decoration: new InputDecoration(prefixIcon: Icon(Icons.lock,color: Colors.white,),border: InputBorder.none,
                fillColor: Colors.white,   errorText: _validate4 ? " Password is required" : null,
                  focusedBorder: new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),
                  enabledBorder:  new OutlineInputBorder(borderSide: BorderSide(color: Color(0xff66666)),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(28),
                    ),
                    
                  ),
                  hintText: "Confirm Password"),
              onChanged: (value) {
                setState(() {
                  confirmEditingController.text.isEmpty
                      ? _validate4 = true
                      : _validate4 = false;
                });
              },
            ),
          ),
SizedBox(height: 15,),

        ButtonTheme(
                minWidth: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 15,
                child: RaisedButton(shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(28.0),
                ),
                  color: Color(0xffCE862A),
                  onPressed: () {


                    if(usernameEditingController.text.isEmpty && confirmEditingController.text.isEmpty && numberEditingController.text.isEmpty && passwordEditingController.text.isEmpty){

 setState(() {
                usernameEditingController.text.isEmpty
                    ? _validate = true
                    : _validate = false;
              });
 setState(() {
               numberEditingController.text.isEmpty
                    ? _validate2 = true
                    : _validate2 = false;
              });
 setState(() {
                passwordEditingController.text.isEmpty
                    ? _validate3 = true
                    : _validate3 = false;
              });
 setState(() {
               confirmEditingController.text.isEmpty
                    ? _validate4 = true
                    : _validate4 = false;
              });
              
              
                      
                    }
                else {
                _showalertdialog();        

                      }     
                  },
                  child: Text("SIGN UP",
                      style:
                          TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400)),
                ),
              ),
       
    ],
    )
    );
  }
}