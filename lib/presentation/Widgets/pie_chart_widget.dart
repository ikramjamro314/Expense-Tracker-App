import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

Widget expensePieChart() {
  double shopping = 200;
  double grocery = 100;
  double others = 150;
  double total = shopping + grocery + others;

  return SizedBox(
    height: 120,
    width: 120,
    child: PieChart(
      PieChartData(
        centerSpaceRadius: 40,
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            value: shopping,
            color: Colors.red,
            radius: 35,
            title: shopping == 0 ? "" : "${(shopping / total * 100).toStringAsFixed(0)}%",
            titleStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          PieChartSectionData(
            value: grocery,
            color: Colors.green,
            radius: 35,
            title: grocery == 0 ? "" : "${(grocery / total * 100).toStringAsFixed(0)}%",
            titleStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          PieChartSectionData(
            value: others,
            color: Colors.blue,
            radius: 35,
            title: others == 0 ? "" : "${(others / total * 100).toStringAsFixed(0)}%",
            titleStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    ),
  );
}
