import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _validate = false;

  bool _validate2 = false;

  TextEditingController newpasswordEditingController =
      new TextEditingController();
  TextEditingController confirmEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Change Password"),),
        body: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
      children: <Widget>[
          TextField(
            controller: newpasswordEditingController,
            decoration: new InputDecoration(
                errorText: _validate ? "password is required" : null,
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(3.0),
                  ),
                ),
              hintText: "password"),
            onChanged: (value) {
              setState(() {
                newpasswordEditingController.text.isEmpty
                    ? _validate = true
                    : _validate = false;
              });
            },
          ),
          SizedBox(
          height: 10,),
          new TextField(
            obscureText: true,
            controller: confirmEditingController,
            decoration: new InputDecoration(
                errorText: _validate2 ? "Password is required" : null,
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(3.0),
                  ),
                ),
                hintText: "Confirm Password"),
            onChanged: (value) {
              setState(() {
                confirmEditingController.text.isEmpty
                    ? _validate2 = true
                    : _validate2 = false;
              });
            },
          ),
SizedBox(height: 15,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 15,
                child: RaisedButton(
                  color: Color(0xffCE862A),
                  onPressed: () {


                    if(newpasswordEditingController.text.isEmpty && confirmEditingController.text.isEmpty){

 setState(() {
                newpasswordEditingController.text.isEmpty
                    ? _validate = true
                    : _validate = false;
              });
 setState(() {
                confirmEditingController.text.isEmpty
                    ? _validate2 = true
                    : _validate2 = false;
              });
              
                      
                    }
                else {
                  Navigator.pop(context);
                        

                      }     
                  },
                  child: Text("Change Password",
                      style:
                          TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400)),
                ),
              ),
          ),
      ],
    ),
        ));
  }
}
