import 'package:expense_tracker_app/presentation/Widgets/info_bar_widget.dart';
import 'package:expense_tracker_app/presentation/Widgets/legend_item_widget.dart';
import 'package:expense_tracker_app/presentation/Widgets/pie_chart_widget.dart';
import 'package:expense_tracker_app/presentation/Widgets/support_widget.dart';
import 'package:expense_tracker_app/presentation/Widgets/toggle_button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(149, 0, 0, 0),
                      ),
                    ),
                    Text("Ikram Jamro", style: AppWidget.headingStyle(20)),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    "Images/boy1.jpg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Manage Your Expenses", style: AppWidget.headingStyle(30.0)),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Expenses", style: AppWidget.headingStyle(20.0)),
                      Text(
                        "\$300.0",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffee6856),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "14 sept 2025 -- 20 sept 2025",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(149, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      expensePieChart(),
                      Column(
                        children: [
                          legendItem(Colors.red, "Shopping", "\$200"),
                          legendItem(Colors.green, "Grocery", "\$100"),
                          legendItem(Colors.blue, "Others", "\$150"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                toggleButton(
                  "This Month",
                  0,
                  selectedIndex,
                  onClick: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
                SizedBox(width: 10),
                toggleButton(
                  "This Year",
                  1,
                  selectedIndex,
                  onClick: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: infoBar("Income", 600.0, Colors.green)),
                SizedBox(width: 10),
                Expanded(child: infoBar("Expenses", 300.0, Colors.red)),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              height: 70.0,
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(color: Color(0xffee6856),
                    borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width,
              child: Row(
              children:[
                Container(  
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image.asset("Images/like.png",height: 30,width: 30,fit: BoxFit.cover),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "Your expenses plans looks good!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ],

            ),
            ),
          ],
        ),
      ),
    );
  }
}
