import 'package:flutter/material.dart';

Widget infoBar(String title, double value, Color color) {
  return Container(
    width: double.infinity,
              padding: EdgeInsets.only(top: 20, left: 20,right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                color: const Color.fromARGB(48, 0, 0, 0),
                width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("$title",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.black),),
      SizedBox(height: 6),
      Text("+\$${value.toStringAsFixed(1)}",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: color),),

      SizedBox(height: 6),
      LinearProgressIndicator(
        value: 1.0, // example max
        color: color,
        backgroundColor: color.withOpacity(0.2),
        minHeight: 10,
        borderRadius: BorderRadius.circular(20),
      ),
      SizedBox(height: 10),
    ],
  ),
  );
}
