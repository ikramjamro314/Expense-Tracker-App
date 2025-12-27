import 'package:flutter/material.dart';

Widget buildTextFieldWidget(
    {required String hintText,
    required IconData prefixIcon
    }) {
  return Container(
  margin: EdgeInsets.only(right: 20.0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 16.0,
      ),
      prefixIcon: Icon(prefixIcon,size: 28.0,color: Color(0xff904c6e),),
      border: InputBorder.none,
    ),
  ),
  );
}