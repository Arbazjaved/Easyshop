import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen_detail extends StatefulWidget {
  const Screen_detail({Key? key}) : super(key: key);

  @override
  State<Screen_detail> createState() => _Screen_detailState();
}

class _Screen_detailState extends State<Screen_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset(
            'assets/6.png',
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topCenter,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 18, right: 18, top: 40, bottom: 0),
            child: Container(
              // height: 40,
              // width: 330,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'What are you looking for?',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                ),
              ),

              // decoration: BoxDecoration(color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 05),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: SizedBox(
                          height: 10,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 0, top: 10),
                            child: Text('Categories',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Text(
                                ('See All'),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
