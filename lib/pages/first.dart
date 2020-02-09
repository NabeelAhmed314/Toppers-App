import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:toppers_pakistan/cart/cart.dart';
import 'package:toppers_pakistan/drawer/about_us.dart';
import 'package:toppers_pakistan/drawer/account.dart';
import 'package:toppers_pakistan/services/category_service.dart';
import 'package:toppers_pakistan/models/category_model.dart';

import 'package:toppers_pakistan/drawer/notification.dart';
import 'package:toppers_pakistan/pages/model.dart';
import 'package:toppers_pakistan/pages/order.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  final _service = CategoryService();
  int _current = 0;
  List imgList = [
    'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/322/322284/berries-are-good-food-for-high-blood-pressure.jpg?w=1155&h=1541',
    'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/2KL6JYQYH4I6REYMIWBYVUGXPI.jpg&w=767',
    'https://i.ytimg.com/vi/9k7PJoNAXkk/maxresdefault.jpg',
    'https://www.diabetes.org/sites/default/files/styles/paragraph_50_50/public/2019-06/understandingcarbs-desktop-5050.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl69R5eUP6NqWuAwfeax-ogL1Woq2DGmpykQ8BHZB_3WXO3Y-z&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDSRzxORgtQ5KJ2UpQZSI1DnpGhvHxl4rhF-c3NH0X7pySIq61&s,',
    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.black,
        title: Text(
          "MENU",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart()));
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add_shopping_cart),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.height / 15,
              child: Center(
                child: Text(
                  "MENU",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.fastfood,
                color: Colors.black,
              ),
              title: Text(
                "MENU",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              title: Text(
                "MY BASKET",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUS()));
              },
              leading: Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                "ABOUT US",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account()));
              },
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                "MY ACCOUNT",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notification2()));
              },
              leading: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              title: Text(
                "NOTIFICATIONS",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              leading: Icon(
                Icons.devices_other,
                color: Colors.black,
              ),
              title: Text(
                "SIGN OUT",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // CarouselSlider(
              //   height: 200.0,
              //   initialPage: 0,
              //   enlargeCenterPage: true,
              //   autoPlay: true,
              //   reverse: false,
              //   enableInfiniteScroll: true,
              //   autoPlayInterval: Duration(seconds: 3),
              //   autoPlayAnimationDuration: Duration(milliseconds: 2000),
              //   pauseAutoPlayOnTouch: Duration(seconds: 5),
              //   scrollDirection: Axis.horizontal,
              //   onPageChanged: (index) {
              //     setState(() {
              //       _current = index;
              //     });
              //   },
              //   items: imgList.map((imgUrl) {
              //     return Builder(
              //       builder: (BuildContext context) {
              //         return Container(
              //           width: MediaQuery.of(context).size.width,
              //           margin: EdgeInsets.symmetric(horizontal: 10.0),
              //           decoration: BoxDecoration(
              //             color: Colors.green,
              //           ),
              //           child: Image.network(
              //             imgUrl,
              //             fit: BoxFit.fill,
              //           ),
              //         );
              //       },
              //     );
              //   }).toList(),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 18,
                color: Color(0xffCE862A),
                child: Center(
                    child: Text(
                  "CATEGORIES",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                )),
              ),
              Expanded(
                child: FutureBuilder(
                  future: _service.fetchAll(),
                  builder:
                      (context, AsyncSnapshot<List<CategoryModel>> snapshot) {
                    if (snapshot.hasData) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          return Text("No Connection");
                        case ConnectionState.waiting:
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        case ConnectionState.active:
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        case ConnectionState.done:
                          return GridView.builder(
                              itemCount: snapshot.data.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 1 / 1.05,
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 5),
                              itemBuilder: (context, i) {
                                return Container(
                                    child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Order(
                                                categoryModel:
                                                    snapshot.data[i])));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Image.network(
                                            "http://nabeel-pc:8000/images/category/" +
                                                snapshot.data[i].image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        height: 140,
                                        width: 140,
                                      ),
                                      SizedBox(height: 9),
                                      Text(snapshot.data[i].name)
                                    ],
                                  ),
                                ));
                              });
                      }
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
