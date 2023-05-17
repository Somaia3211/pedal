import 'package:flutter/material.dart';
import 'package:pedal_pro/component/RoundedButton.dart';
import 'package:pedal_pro/constant.dart';
import 'package:pedal_pro/pages/customer_screens/CustomerSignUpPage.dart';
import 'package:pedal_pro/pages/technician_screens/tecSignUpPage.dart';
import 'package:pedal_pro/pages/welcome_screens/loginWelcomePage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepOrange, kPrimary],
            ),
          ),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.pedal_bike_rounded,
              size: 200,
              color: Colors.white70,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'PEDAL PRO',
              style: TextStyle(
                  color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'ON_DEMAND BIKE REPAIR SERVICE',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundButton(
              title: 'SIGN UP AS A CUSTOMER',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomerSignUp(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            RoundButton(
              title: 'SIGN UP AS A TECHNICIAN',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TecSignUp(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              child: const Text(
                ' Already have account?  Login',
                style: TextStyle(color: kBlack45, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginWelcomPage(),
                  ),
                );
              },
            ),
          ]),
        ),
    );
  }
}
