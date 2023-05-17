import 'package:flutter/material.dart';
import 'package:pedal_pro/component/customTextFormFiled.dart';
import 'package:pedal_pro/component/customContainer.dart';
import 'package:pedal_pro/pages/welcome_screens/welcomePage.dart';
import 'package:pedal_pro/pages/technician_screens/option_page.dart';

import '../../constant.dart';


class TecSignUp extends StatefulWidget {
  const TecSignUp({Key? key}) : super(key: key);

  @override
  _TecSignUpState createState() => _TecSignUpState();
}

class _TecSignUpState extends State<TecSignUp> {


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0XFFEEEEEE),
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            height: height / 1.2,
            child: Stack(
              children: [
                CustomContainer(height: height/1.6,title: 'Create Account',),
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
                        const SizedBox(height: 25,),
                        const Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: CustomTextFormField(
                            lableText: 'Full Name',
                            hintText: 'Enter your Name',
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: CustomTextFormField(
                            lableText: 'Email',
                            hintText: 'Enter your email',
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: CustomTextFormField(
                            lableText: 'Phone Number',
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: CustomTextFormField(
                            lableText: 'Password',
                          ),
                        ),
                        const SizedBox(height: 15,),
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
                        ),const SizedBox(height: 10,),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>OptionPage()));
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: kPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
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
      backgroundColor: Color(0XFFDD2C00),
      elevation: 0,
      leading: Padding(padding: EdgeInsets.all( 15),child:  IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));

        },
      ),),   );
  }
}
