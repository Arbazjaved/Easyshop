import 'package:easyshop/AppModules/utils/Buttons/custom_textfield.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom_textfield extends StatefulWidget {
  TextInputType textInputType;
// TextEditingController editingController;
  String text;

  Custom_textfield({
    Key? key,
    required this.text,
    required this.textInputType,
    // required this.editingController
  }) : super(key: key);

  @override
  State<Custom_textfield> createState() => _Custom_TextfieldState();
}

class _Custom_TextfieldState extends State<Custom_textfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: 305,
      child: TextFormField(
        //  controller: widget.editingController,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          labelText: widget.text,
          // hintText: widget.text,
        ),
      ),
    );
  }
}
