import 'package:flutter/material.dart';
import 'package:toppers_pakistan/orderhistory.dart/order-status.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar( title: Text("ORDER HISTORY"),centerTitle: true,),
    
    
    body: ListView(


      children: <Widget>[

        Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: ListTile(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderStatus()));},

            leading: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("ORDER ID£ 100",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),SizedBox(height: 5,),
      Text("Order placed"),
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text("Feb -05-20 04:46"),
            ),
          trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),),
          
        ),
        Divider(color: Colors.black,height: 0,)
      ],
    )
    );
  }
}