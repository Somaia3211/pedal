import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pedal_pro/Styles/styles.dart';
import 'package:pedal_pro/constant.dart';
import 'package:pedal_pro/pages/technician_screens/pages/tecBalance.dart';
import 'package:pedal_pro/pages/technician_screens/tecAppointment.dart';
import 'package:switcher_button/switcher_button.dart';

class TecMainPage extends StatefulWidget {
  const TecMainPage({Key? key}) : super(key: key);

  @override
  _TecMainPageState createState() => _TecMainPageState();
}

class _TecMainPageState extends State<TecMainPage> {
  GlobalKey<ScaffoldState> scaffoldKey=GlobalKey<ScaffoldState>();

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  GoogleMapController? mapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Container(
          width: 250,
          color: Colors.white,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Container(
                  color: Colors.white,
                  height: 150,
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/users_images/image1.jpg',
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Carla Sam',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('View Profile'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    'Setting',
                    style: kDraverItemStyle,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip_outlined),
                  title: Text(
                    'Privacy & policy',
                    style: kDraverItemStyle,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text(
                    'About us',
                    style: kDraverItemStyle,
                  ),
                ),
              ],
            ),
          )),
      body: Stack(
        children: [
          GoogleMap(
              initialCameraPosition: _kGooglePlex,
              mapType: MapType.normal,
              myLocationEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                mapController = controller;
              }),

          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange,
                    blurRadius: 10,
                    spreadRadius: 0.4,
                    offset: Offset(0.7, 0.7),
                  ),
                ],
              ),
              height: 120,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: GestureDetector(
                      onTap: (){
                        scaffoldKey.currentState?.openDrawer();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: kPrimary,
                                blurRadius: 15,
                                spreadRadius: 0.5,
                                offset: Offset(
                                  0.7,
                                  0.7,
                                ),
                              ),
                            ]),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(Icons.menu,color: kPrimary,),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100,top: 20),
                        child: SwitcherButton(
                          offColor: Colors.orangeAccent,
                          size: 100,
                          onColor: kPrimary,
                          value: true,
                          onChange: (value) {
                            print(value);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text('OF/ON',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
