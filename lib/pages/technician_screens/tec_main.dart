import 'package:flutter/material.dart';
import 'package:pedal_pro/constant.dart';
import 'package:pedal_pro/pages/technician_screens/pages/account.dart';
import 'package:pedal_pro/pages/technician_screens/pages/home.dart';
import 'package:pedal_pro/pages/technician_screens/pages/chat_screen.dart';
import 'package:pedal_pro/pages/technician_screens/pages/settings.dart';
import 'package:pedal_pro/pages/technician_screens/pages/tecBalance.dart';
import 'package:pedal_pro/pages/technician_screens/tecAppointment.dart';
import 'package:pedal_pro/tecMainPage.dart';

class TechnicianMainPage extends StatefulWidget {
  const TechnicianMainPage({Key? key}) : super(key: key);

  @override
  State<TechnicianMainPage> createState() => _TechnicianMainPageState();
}

class _TechnicianMainPageState extends State<TechnicianMainPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    const TecMainPage(),
    const TecAppointment(),
    const TecBlance()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: kPrimary,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.self_improvement_outlined), label: 'Appointment'),
          BottomNavigationBarItem(icon: Icon(Icons.balance), label: 'Balance'),
        ],
      ),

    );
  }
}
