import 'package:flutter/material.dart';
import 'package:toppers_pakistan/drawer/account/order_history.dart';

class ReOrder extends StatefulWidget {
  @override
  _ReOrderState createState() => _ReOrderState();
}

class _ReOrderState extends State<ReOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("RE-OREDER"),),body: ListView(
     padding: EdgeInsets.fromLTRB(15, 25, 15, 0), children: <Widget>[


        
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

SizedBox(height: 35,),
Center(child: Text("OrderID 100",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),)

,SizedBox(height: 25,),
Center(child: Text("Are you sure to palce Order?",),)

,
SizedBox(height: 10,),
Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width/1.1,
                      height: MediaQuery.of(context).size.height / 15,
                      child: RaisedButton(
                        color: Color(0xffcdaa44),
                        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderHistory()));},
                        child: Text("Select Payment Method",
                            style: TextStyle(color: Colors.white,
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
          Container(color: Colors.grey,child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextField( decoration: InputDecoration(hintText: "addtional instructions", border: InputBorder.none,),maxLines: 5,),
          ),),
                

      ],
    ),);  }
}