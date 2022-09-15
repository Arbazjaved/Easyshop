import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customButton({
  required String title,
}) {
  return InkWell(
    // onTap: callback,
    child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 305,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),

            color: Colors.blue),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          ),
        )),
  );
}
