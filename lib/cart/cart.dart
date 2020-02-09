import 'package:flutter/material.dart';
import 'package:toppers_pakistan/cart/selectDeliveryAddress.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  var value = 0;

  int _incrementCounter() {
    setState(() {
      value++;
      print(value);
    });
    return value;
  }

  int _decrementCounter() {
    setState(() {
      if (value >= 1) {
        value--;
      }
    });
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("CART"),
      ),
      body: ListView(
        children: <Widget>[
          Container(height: 50,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Text(
                        "ITEMS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        "QTY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      )),
                  Expanded(
                      flex: 0,
                      child: Text(
                        "PRICE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      )),
                ],
              ),
            ),
          ),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: ListTile(
                        subtitle: Text("(500 gms 550)",), 
                        title: Text("Fish Tempura Boneless", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                        ),
                    )
                    ),
                Expanded(
                  flex: 0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.remove, color: Colors.black),
                            onPressed: () {
                              print("$value");
setState(() {
  _decrementCounter();
});                              
                            }),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Text("$value"),
                        ),
                        IconButton(
                            
                            icon: Icon(Icons.add, color: Colors.black),
                            onPressed: () {
                              print("$value");
                           setState(() {
                                _incrementCounter();
                           
                           }); },)

                      ]),
                ),
                Expanded(
                    
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Text("RS. 55ddd0", style: TextStyle(fontSize: 16)),
                    )),
              ],
            ),
          
          Divider(),
          ////////////////////////////////////////////////////////////////////////////////
          ///
          ///
Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: ListTile(subtitle: Text("(500 gms 550)",), title: Text("Fish Tempasdsadsura Boneless", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),
                    )
                    ),
                Expanded(
                  flex: 0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.remove, color: Colors.black),
                            onPressed: () {
                              _decrementCounter();
                              print("das");
                            }),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Text("$value"),
                        ),
                        IconButton(
                                                       icon: Icon(Icons.add, color: Colors.black) ,onPressed: () {
                              _incrementCounter();
                              print("object");
                            },
),
                      ]),
                ),
                Expanded(
                    
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Text("RS.12560", style: TextStyle(fontSize: 16)),
                    )),
              ],
            ),
          ),
          Divider(),


          ListTile(title:Text("SubTotal",style: TextStyle(fontWeight: FontWeight.w500,fontSize:16)) ,trailing: Text("Rs. 4300.00",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),),        
          ListTile(title:Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) ,trailing: Text("Rs. 4300.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),        
          

          Container(color: Colors.grey,child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextField( decoration: InputDecoration(hintText: "addtional instructions", border: InputBorder.none,),maxLines: 5,),
          ),),
Divider(height: 5,color: Colors.white,),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 15,
                child: RaisedButton(
                  color: Color(0xffcdaa44),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectDeliveryAddress()));},
                  child: Text("Select Delivery Address",
                      style:
                          TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400)),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
