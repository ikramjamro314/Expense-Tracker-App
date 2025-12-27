import 'package:expense_tracker_app/presentation/Widgets/support_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8edc2),
      body: Container(
        child: Column(
          children: [
            Image.asset("Images/onboard.png"),
            Expanded(
              child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
               borderRadius: BorderRadius.circular(60),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Manage your daily\n life expenses",
                    style: AppWidget.headingStyle(30),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 20),
                    child: Text(
                    "Expense tracker is a simple and efficient personal finance management app that allows you to track your daily expenses and manage your budget",
                    style: TextStyle(
                      color: Color.fromARGB(160, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    child: Material(
                      elevation:8.0,
                      borderRadius: BorderRadius.circular(60),
                      child: Container( 
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffee6856),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  )
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
