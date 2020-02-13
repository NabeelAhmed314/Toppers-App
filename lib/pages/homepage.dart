import 'package:flutter/material.dart';
import 'package:toppers_pakistan/models/local-data.dart';
import 'package:toppers_pakistan/pages/first.dart';
import 'package:toppers_pakistan/pages/signin.dart';
import 'package:toppers_pakistan/pages/signup.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return 
    LocalData.currentCustomer == null ? 
    Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(120)),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(120),
                    child: Image.asset(
                      "images/food.jpg",
                      fit: BoxFit.cover,
                    ))),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 15,
              child: RaisedButton(
                color: Color(0xffCE862A),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(28.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signin()));
                },
                child: Text("SIGN IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 15,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(28.0),
                ),
                color: Color(0xffCE862A),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text("SIGN UP",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 15,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(28.0),
                ),
                color: Color(0xffbc282b),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => First()));
                },
                child: Text(
                  "Proceed As A Guest",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    ) : 
    First();
  }
}
