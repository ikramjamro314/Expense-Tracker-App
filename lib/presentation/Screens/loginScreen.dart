import 'package:expense_tracker_app/core/app_routes.dart';
import 'package:expense_tracker_app/presentation/Widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "Images/login.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding:  EdgeInsets.only(top: 40.0, right: 30.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text("Welcome\nBack!", style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              ),
            ),
            ),
            SizedBox(height: 120.0),
            Text("Email", style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3f3d65),
                  ),
                  ),
                  SizedBox(height: 10.0),
                  buildTextFieldWidget(
                    hintText: "Enter Email",
                    prefixIcon: Icons.email,
                  ),

                  SizedBox(height: 30.0),
                  Text("Password", style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                   color: Color(0xff3f3d65),
                  ),
                  ),
                  SizedBox(height: 10.0),
                  buildTextFieldWidget(
                    hintText: "Enter Password",
                    prefixIcon: Icons.password,
                  ),
                  SizedBox(height: 40.0),
                  
                  Padding(padding: EdgeInsets.only(right: 40.0,left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Next", style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3f3d65),
                  ),
                      ),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Color(0xff904c6e),
                        child: Icon(Icons.arrow_forward, color: Colors.white, size: 30.0,),
                      ),
                    ],
                  ),
                  ),

                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.signUp);
                      },
                      child: Text("Signup", style: TextStyle(
                        color: Color(0xff904c6e),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
          ],
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