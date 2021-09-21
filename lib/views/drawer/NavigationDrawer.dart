import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Login Page.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          /*  DrawerHeader(
            child:
            Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child:
                Align(
                  alignment: Alignment.centerRight,
              child:         IconTheme(
                  data: IconThemeData(color: Colors.black), child: CloseButton()),  )


            ),

            *//*Container(
                height: 142,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    children: [
                      Text('Sidebar Menu',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0)),
                      Text('Dont miss any important dots',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0)),
                    ],
                  )
                ),),*//*
          *//*  decoration: BoxDecoration(
              color: Colors.transparent,
            ),*//*
          ),*/
          SizedBox(
            height: 20,
          ),
          Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child:
              Align(
                alignment: Alignment.centerRight,
                child:         IconTheme(
                    data: IconThemeData(color: Colors.black), child: CloseButton()),  )


          ),
          Container(
            height: 142,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Column(
                  children: [
                    Text('Sidebar Menu',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0)),
                    // Text('Dont miss any important dots',
                    //     softWrap: true,
                    //     style: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 20.0)),
                  ],
                )
            ),),





          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => DashBoardPage(
              //       )),
              // );
            },
            child: Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 45,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => DashBoardPage(
              //       )),
              // );
            },
            child: Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 45,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => DashBoardPage(
              //       )),
              // );
            },
            child: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 45,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => DashBoardPage(
              //       )),
              // );
              Get.offAll(LoginPage());

            },
            child: Text(
              'Log Out',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 45,
          ),

        ],
      ),
    );/*Drawer(
      elevation: 10.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[


          DrawerHeader(
            child: Center(
              child: Text('Drawer Header',
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0)),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 0.8),
                  // 10% of the width, so there are ten blinds.
                  colors: [Colors.red, Colors.redAccent],
                  // whitish to gray
                  tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
                )),
          ),


          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DashBoardPage(
                    )),
              );
            },
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DashBoardPage(
                    )),
              );
            },
            child:  Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, top: 20, bottom: 20, right: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.blue,fontSize: 16
                    ),
                  ),
                )),
          ),


          ListTile(
            title: Text('Profile'),
            onTap: () {
              print("Item 2 of drawer tapped");
              Navigator.pop(context);
            },
          )

        *//*  ListTile(
            title: Text('Profile'),
            onTap: () {
              print("Item 2 of drawer tapped");
              Navigator.pop(context);
            },
          )*//*
        ],
      ),
    );*/
  }
}