import 'package:flutter/material.dart';
import 'package:pedal_pro/component/customContainer.dart';
import 'package:pedal_pro/component/customTextFormFiled.dart';
import 'package:pedal_pro/pages/customer_screens/option_page.dart';
import 'package:pedal_pro/pages/welcome_screens/loginWelcomePage.dart';

import '../../constant.dart';

class CustomerLogin extends StatefulWidget {
  const CustomerLogin({Key? key}) : super(key: key);
  @override
  _CustomerLoginState createState() => _CustomerLoginState();
}
class _CustomerLoginState extends State<CustomerLogin> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0XFFEEEEEE),
      appBar:buildAppBar() ,
      body:  Column(
        children: [
          Container(
            height: height / 1.2,
            child: Stack(
              children: [
                CustomContainer(
                  height: height/1.6,
                  title: 'Sign In as Customer',
                ),
                Positioned(
                  top: 90,
                  left: width / 7,
                  child: Container(
                    width: width / 1.4,
                    height: height / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 70,),
                        const Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: CustomTextFormField(
                            lableText: 'Email',
                            hintText: 'Enter your email',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: CustomTextFormField(
                            lableText: 'Password',
                          ),
                        ),
                        const SizedBox(height: 70,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: CheckboxListTile(
                            value: false,
                            onChanged: (value) {
                              value = true;
                            },
                            title: const Text('I agree with & condition'),
                            controlAffinity: ListTileControlAffinity.leading,
                            /* shape: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20)
                              ),*/
                          ),
                        ),
                        const SizedBox(height: 20,),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const OptionPage()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'LogIn',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: kPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )),
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
      backgroundColor: const Color(0XFFDD2C00),
      elevation: 0,
      leading: Padding(padding: const EdgeInsets.all( 15),child:  IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginWelcomPage()));

        },
      ),),   );
  }
}
