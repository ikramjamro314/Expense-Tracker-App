import "package:flutter/material.dart";


Widget legendItem(Color color, String title, String amount) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.rectangle),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text("$title",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),),
        Text("$amount",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,color: Color.fromARGB(149, 0, 0,0)),)
      ],
        )
      ],
    ),
  );
}