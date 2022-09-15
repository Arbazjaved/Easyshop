import 'dart:async' show Timer;
import 'package:easyshop/AppModules/AuthModules/View/splesh2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class spleshscreen1 extends StatefulWidget {
  const spleshscreen1({Key? key}) : super(key: key);

  @override
  State<spleshscreen1> createState() => _spleshscreen1State();
}

class _spleshscreen1State extends State<spleshscreen1>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Get.off(spleshscreen2());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
