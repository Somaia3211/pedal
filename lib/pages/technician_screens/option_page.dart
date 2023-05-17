import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pedal_pro/pages/technician_screens/tec_main.dart';

import '../../component/custom-container-option.dart';
import '../../constant.dart';

class OptionPage extends StatefulWidget {
  const OptionPage({Key? key}) : super(key: key);

  @override
  State<OptionPage> createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      appBar: buildAppBar(),
      backgroundColor: const Color(0XFFEEEEEE),
      drawer: Drawer(
        child: Container(
          color: Colors.grey[200],
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                child: Center(
                  child: Text(
                    'L O G O',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              const Divider(
                height: 1.0,
                color: Color(0xFFe2e2e2),
                thickness: 1.0,
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text(
                  'Manage Address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Navigator.of(context).push(
                  // MaterialPageRoute(
                  // builder: (context) => const TechnicianMainPage(),
                  // ),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(Icons.mail),
                title: const Text(
                  'Support',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Navigator.of(context).push(
                  // MaterialPageRoute(
                  // builder: (context) => const TechnicianMainPage(),
                  // ),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text(
                  'Privacy Policy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const TechnicianMainPage(),
                  //   ),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text(
                  'Change Language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const TechnicianMainPage(),
                  //   ),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text(
                  'FAQs',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const TechnicianMainPage(),
                  //   ),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.exit_to_app,
                ),
                title: const Text(
                  'Log out',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: height /1.2,
            child: Stack(
              children: [
                CustomContainerOption(
                  height: height/1.5,
                ),
                Positioned(
                  top: 100,
                  left: width / 7,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                           InkWell(
                             child:  Container(
                               width: 130,
                               height: 130,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(12),
                                 boxShadow: [
                                   BoxShadow(
                                       color: Colors.black.withOpacity(.1),
                                       blurRadius: 4.0,
                                       spreadRadius: .05)
                                 ],
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Center(
                                     child: Image.asset(
                                       "images/technician.png",
                                       height: 60,
                                       width: 60,
                                     ),
                                   ),
                                   const SizedBox(
                                     height: 10,
                                   ),
                                   const Text("Find Tecnician")
                                 ],
                               ),
                             ),
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>TechnicianMainPage()));
                             },
                           ),
                            const SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.1),
                                      blurRadius: 4.0,
                                      spreadRadius: .05)
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      "images/calender.jpg",
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text("Calender")
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.1),
                                      blurRadius: 4.0,
                                      spreadRadius: .05)
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      "images/message.jpg",
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text("Send Messages")
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.1),
                                      blurRadius: 4.0,
                                      spreadRadius: .05)
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      "images/search_job.jpg",
                                      height: 60,
                                      width: 100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text("Find job")
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 4.0,
                                  spreadRadius: .05)
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "images/bike.png",
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text("bike")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kPrimary,
        elevation: 0,
        leading: Padding(padding: EdgeInsets.all( 15),
          child:  IconButton(
          icon: const Icon(
            Icons.menu,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            //open menu
            scaffoldKey.currentState?.openDrawer();
          },
        ),
    ),
        title:const Padding(padding: EdgeInsets.only(top: 23),child:  Text(
          'Hi! Technician',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),)
    );
  }
}
