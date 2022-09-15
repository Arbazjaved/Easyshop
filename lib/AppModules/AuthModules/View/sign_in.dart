import 'package:easyshop/AppModules/AuthModules/View/Sign_up.dart';
import 'package:easyshop/AppModules/AuthModules/View/google_auth.dart';
import 'package:easyshop/AppModules/utils/Buttons/custom_button.dart';
import 'package:easyshop/AppModules/utils/Buttons/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:async' show Timer;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:easyshop/AppModules/AuthModules/View/Sign_up.dart';

class signin extends StatefulWidget {
  signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 50),
                child: Text('Welcome to EasyShop',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 199),
                child: Text('Sign to continue',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              Custom_textfield(
                  text: 'Email', textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 20,
              ),
              Custom_textfield(
                  text: 'Password', textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              customButton(title: 'Sign In'),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 50,
                  width: 335,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 0.5)),
                  child: Row(
                    children: [
                      Image.asset('assets/2.png'),
                      SizedBox(
                        width: 40,
                      ),
                      Text('Sign in with Facebook')
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (() async {
                  UserCredential user = await GoogleSignInService().onSignIn();
                  print("user");
                  print(user);
                  if (user != null) {}
                }),
                child: Container(
                    height: 50,
                    width: 335,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 0.5)),
                    child: Row(
                      children: [
                        Image.asset('assets/2.1.png'),
                        SizedBox(
                          width: 40,
                        ),
                        Text('Sign in with Google')
                      ],
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Text('Dont have an account? Sign Up'),
              SizedBox(
                height: 20,
              )
            ]),
          )),
    );
  }
}
