import 'package:easyshop/AppModules/AuthModules/View/sign_in.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:async' show Timer;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class spleshscreen2 extends StatefulWidget {
  const spleshscreen2({Key? key}) : super(key: key);

  @override
  State<spleshscreen2> createState() => _spleshscreen2State();
}

class _spleshscreen2State extends State<spleshscreen2>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.off(signin());
    }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo.1.png',
          height: 120,
          width: 278,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
