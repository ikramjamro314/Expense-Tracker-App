import 'package:flutter/material.dart';

Widget toggleButton(String title, int index,int selectedIndex, {required Function(int) onClick}) {
  bool isSelected = selectedIndex == index;

  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.redAccent : Colors.grey.shade300,
        foregroundColor: isSelected ? Colors.white : Colors.black,
        shape: const StadiumBorder(),
      ),
      onPressed: () {
       onClick(index);
      },
      child: Text(title, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),),
    ),
  );
}
