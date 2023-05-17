import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pedal_pro/pages/technician_screens/option_page.dart';
import 'package:pedal_pro/pages/technician_screens/tec_main.dart';

import '../../../constant.dart';

class TechnicianHomeScreen extends StatefulWidget {
  const TechnicianHomeScreen({Key? key}) : super(key: key);

  @override
  State<TechnicianHomeScreen> createState() => _TechnicianHomeScreenState();
}

class _TechnicianHomeScreenState extends State<TechnicianHomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: buildAppBar(),
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TechnicianMainPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.mail),
                title: const Text(
                  'Support',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TechnicianMainPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text(
                  'Privacy Policy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TechnicianMainPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text(
                  'Change Language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TechnicianMainPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text(
                  'FAQs',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TechnicianMainPage(),
                    ),
                  );
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
      // body:Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Center(child:  Padding(padding: EdgeInsets.all(15),child:   Container(
      //       decoration: BoxDecoration(
      //         color: Colors.red,
      //         borderRadius: BorderRadius.circular(50),),
      //       height: 80,
      //       width: 300,
      //     ),),),
      //   ],
      // ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,

      leading:  Padding(padding: EdgeInsets.all( 15),
      child:  IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.grey[800],
          size: 30,
        ),
        onPressed: () {
          //open menu
          scaffoldKey.currentState?.openDrawer();
        },
      ),)
    );
  }
}
