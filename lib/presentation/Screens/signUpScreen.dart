import 'package:expense_tracker_app/core/app_routes.dart';
import 'package:expense_tracker_app/presentation/Widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "Images/signup.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 35.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create\nAccount!", style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),
                  SizedBox(height: 50.0), 
                  Text("Name", style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  ),
                  SizedBox(height: 10.0),
                  buildTextFieldWidget(
                    hintText: "Enter Name",
                    prefixIcon: Icons.person,
                  ),
                  
                  SizedBox(height: 20.0),
                  Text("Email", style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  ),
                  SizedBox(height: 10.0),
                  buildTextFieldWidget(
                    hintText: "Enter Email",
                    prefixIcon: Icons.email,
                  ),

                  SizedBox(height: 20.0),
                  Text("Password", style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
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
                    color: Colors.white,
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
                      Text("Already have an account? ", style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),),
                      GestureDetector(
                      onTap: () {
                         Navigator.pushNamed(context, AppRoutes.login);
                      },
                      child: Text("Login", style: TextStyle(
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
