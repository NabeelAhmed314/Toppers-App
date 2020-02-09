import 'package:flutter/material.dart';
import 'package:toppers_pakistan/drawer/account/add-address.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>AddAddress()));}),

      appBar: AppBar(title: Text("Address"),centerTitle: true,),
      body: ListView(
        children: <Widget>[
Container(
  child: Column(
    children: <Widget>[
      
          Divider(color: Colors.black,),
          Padding(padding: EdgeInsets.fromLTRB(10, 5, 5, 5),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[

Text("Description"),
Row(children: <Widget>[

  Text("House"),Text(","),Text("Street"),
],),
Text("Phone:"),


          ],),),          Divider(color: Colors.black,),
    ],
  ),
)
        ],
      ),
    );
  }
}




