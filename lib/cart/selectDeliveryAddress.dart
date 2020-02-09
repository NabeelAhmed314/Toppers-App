import 'package:flutter/material.dart';
import 'package:toppers_pakistan/cart/paymentmethod.dart';
import 'package:toppers_pakistan/drawer/account/add-address.dart';

class SelectDeliveryAddress extends StatefulWidget {
  @override
  _SelectDeliveryAddressState createState() => _SelectDeliveryAddressState();
}

class _SelectDeliveryAddressState extends State<SelectDeliveryAddress> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  var delete;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[ Positioned(right: 5,bottom: 60,
                  child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddAddress()));
            }),
        ),
          ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          )),
                      Center(
                          child: Text(
                        "Delivery Address ?",
                        style: TextStyle(fontSize: 35),
                      ))
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Divider(
                      color: Colors.black,
                    ),
                    ListTile(
                      leading: Radio(
                          activeColor: Colors.black,
                          value: 1,
                          groupValue: selectedRadio,
                          onChanged: (val) {
                            setSelectedRadio(val);
                          }),
                      title: Text("Description"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Description"),
                          Text("Description"),
                        ],
                      ),
                      trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              delete.remove();
                            });
                          }),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            ),
          
          Stack(
            children: <Widget>[
              Positioned(bottom: 0,left: 20,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width/1.1,
                      height: MediaQuery.of(context).size.height / 15,
                      child: RaisedButton(
                        color: Color(0xffcdaa44),
                        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentMethod()));},
                        child: Text("Select Payment Method",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ),
                    ),
                  )
                  )
            ],
          )
        ],
      ),
    );
  }
}
