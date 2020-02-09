import 'package:flutter/material.dart';
import 'package:toppers_pakistan/drawer/account/order_history.dart';


class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {




  void _placeorder() {
    showDialog(
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            title: new Text("Order Placed",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            content: Text("Your order has been placed successfully.",style: TextStyle(fontSize: 18,),),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              FlatButton(
                child: new Text("OK",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                onPressed: () {
   Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderHistory()));
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Place Order"),centerTitle: true,),
    body: ListView(padding: EdgeInsets.fromLTRB(10, 20, 10, 20), children: <Widget>[
      

CircleAvatar(backgroundColor: Colors.yellow,minRadius: 80,),
SizedBox(height: 15,),
Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color:   Color(0xffCE862A),
),child: Center(child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("Delivery Time",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
)),),

SizedBox(height: 15,),

Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),color:  Color(0xffbc282b),
),child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("Your order will be delivered tommorrow between 12:00 pm to 04:00 pm .",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
)),

SizedBox(height: 15,),


Container(decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Column(children: <Widget>[
ListTile(
  leading: Text("data"),
  trailing: Text("data"),
),
Divider(color: Colors.black,height: 0,),
ListTile(
  leading: Text("data"),
  trailing: Text("data"),
),Divider(color: Colors.black,height: 0,),ListTile(
  leading: Text("data"),
  trailing: Text("data"),
),Divider(color: Colors.black,height: 0,),ListTile(
  leading: Text("data"),
  trailing: Text("data"),
),Divider(color: Colors.black,height: 0,),ListTile(
  leading: Text("data"),
  trailing: Text("data"),
)
        ],),
      ),

      SizedBox(height: 10,),
        Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 15,
                      child: RaisedButton(
                        color:    Color(0xffCE862A),
                        onPressed: () {_placeorder();},
                        child: Text("Place Order",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ),
                    ),
                  )


    ],));
  }
}