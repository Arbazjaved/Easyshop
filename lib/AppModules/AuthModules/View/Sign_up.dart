import 'package:easyshop/AppModules/utils/Buttons/custom_button.dart';
import 'package:easyshop/AppModules/utils/Buttons/custom_textfield.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Container(
            height: 637,
            width: 335,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 212),
                  child: Text('Sign Up',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 59),
                  child: Text('Sign Up with your email and password.'),
                ),
                SizedBox(
                  height: 20,
                ),
                Custom_textfield(
                    text: 'First Name', textInputType: TextInputType.name),
                SizedBox(
                  height: 5,
                ),
                Custom_textfield(
                    text: 'Last Name', textInputType: TextInputType.name),
                SizedBox(
                  height: 5,
                ),
                Custom_textfield(
                    text: 'Email', textInputType: TextInputType.emailAddress),
                SizedBox(
                  height: 5,
                ),
                Custom_textfield(
                    text: 'Phone', textInputType: TextInputType.phone),
                SizedBox(
                  height: 5,
                ),
                Custom_textfield(
                    text: 'Password',
                    textInputType: TextInputType.visiblePassword),
                SizedBox(
                  height: 10,
                ),
                customButton(title: 'Sign Up'),
                SizedBox(
                  height: 45,
                ),
                Container(
                  // height: 20,
                  // width: 230,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, right: 30),
                    child: Row(
                      children: [
                        Image.asset('assets/3.png'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('I Agree With Terms & Conditions')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    //   ),
    // );
  }
}
