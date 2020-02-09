import 'package:flutter/material.dart';


class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  bool _validate = false;

  bool _validate2 = false;
  bool _validate3 = false;

  bool _validate4 = false;
  bool _validate5 = false;

  

  TextEditingController descriptionEditingController =
      new TextEditingController();
  TextEditingController houseEditingController =
   new TextEditingController();

TextEditingController areaEditingController =
      new TextEditingController();
  TextEditingController cityEditingController =
      new TextEditingController();
  TextEditingController mobileEditingController =
      new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ADD ADDRESS"),),
        body: ListView(
      children: <Widget>[
          TextField(    controller: descriptionEditingController,
            decoration: new InputDecoration(contentPadding: EdgeInsets.all(15),
                errorText: _validate ? "Description is required" : null,
              hintText: "Description"),
            onChanged: (value) {
              setState(() {
                descriptionEditingController.text.isEmpty
                    ? _validate = true
                    : _validate = false;
              });
            },
          ),
          SizedBox(
          height: 10,),
          new TextField(
            obscureText: true,
            controller: houseEditingController,
            decoration: new InputDecoration(
              contentPadding: EdgeInsets.all(15),
                errorText: _validate2 ? "House , Street is required" : null,
              
                hintText: "House , Street"),
            onChanged: (value) {
              setState(() {
                houseEditingController.text.isEmpty
                    ? _validate2 = true
                    : _validate2 = false;
              });
            },
          ),

TextField(    controller: areaEditingController,
            decoration: new InputDecoration(contentPadding: EdgeInsets.all(15),
                errorText: _validate3 ? "Area is required" : null,
              hintText: "Area"),
            onChanged: (value) {
              setState(() {
                areaEditingController.text.isEmpty
                    ? _validate3 = true
                    : _validate3 = false;
              });
            },
          ),
          SizedBox(
          height: 10,),TextField(    controller: cityEditingController,
            decoration: new InputDecoration(contentPadding: EdgeInsets.all(15),
                errorText: _validate4 ? "City is required" : null,
              hintText: "City"),
            onChanged: (value) {
              setState(() {
                cityEditingController.text.isEmpty
                    ? _validate4 = true
                    : _validate4 = false;
              });
            },
          ),
          SizedBox(
          height: 10,),TextField(    controller: mobileEditingController,
            decoration: new InputDecoration(contentPadding: EdgeInsets.all(15),
                errorText: _validate5 ? "Mobile Number" : null,
              hintText: "Mobile Number"),
            onChanged: (value) {
              setState(() {
              mobileEditingController.text.isEmpty
                    ? _validate5 = true
                    : _validate5 = false;
              });
            },
          ),
          SizedBox(
          height: 10,),

SizedBox(height: 15,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 15,
                child: RaisedButton(
                  color: Color(0xffCE862A),
                  onPressed: () {


                    if(descriptionEditingController.text.isEmpty && houseEditingController.text.isEmpty){

 setState(() {
             descriptionEditingController.text.isEmpty
                    ? _validate = true
                    : _validate = false;
              });

 setState(() {
                houseEditingController.text.isEmpty
                    ? _validate2 = true
                    : _validate2 = false;
              });
              
 setState(() {
                areaEditingController.text.isEmpty
                    ? _validate3 = true
                    : _validate3 = false;
              });
              
 setState(() {
                cityEditingController.text.isEmpty
                    ? _validate4 = true
                    : _validate4 = false;
              });
              
 setState(() {
                mobileEditingController.text.isEmpty
                    ? _validate5 = true
                    : _validate5 = false;
              });
              
                      
                    }
                else {
                  Navigator.pop(context);
                        

                      }     
                  },
                  child: Text("Address",
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
