import 'package:flitbasehub/home_screen.dart';
import 'package:flitbasehub/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = '';
  String password = '';
  bool showpassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Flitbasehub',
            style: TextStyle(fontSize: 16.0),
          ),
          centerTitle: true,
          backgroundColor: appbarcolor,
        ),
        body: ListView(children: [
          Container(
            height: Get.height.h,
            width: Get.width.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 110.h, left: 20.w),
                  child: Text('Welcome', style: textstyle),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    'Sign in to access account',
                    style: TextStyle(fontSize: 18.0, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Container(
                    height: 45.h,
                    width: 335.w,
                    child: TextField(
                      onChanged: (value) {
                        email = value;
                        // print(email);
                      },
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xff374072)),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff00BFFF))),
                          labelText: 'UserName/Email',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 24.0),
                  child: Container(
                    height: 45.h,
                    width: 335.w,
                    child: TextField(
                      obscureText: showpassword,
                      onChanged: (value) {
                        password = value;
                      },
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xff374072)),
                      decoration: InputDecoration(
                          suffix: GestureDetector(
                              onTap: () {
                                if (showpassword == false) {
                                  showpassword = true;
                                  setState(() {});
                                } else if (showpassword == true) {
                                  showpassword = false;
                                  setState(() {});
                                }
                              },
                              child: showpassword
                                  ? Icon(Icons.remove_red_eye)
                                  : Icon(Icons.remove_red_eye_outlined)),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff00BFFF))),
                          labelText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 74.h,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              user: email,
                              password: password,
                            ),
                          ));
                    },
                    child: Container(
                      height: 43.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                            bottomLeft: Radius.circular(4.0),
                            bottomRight: Radius.circular(4.0)),
                        color: Color(0xff00BFFF),
                      ),
                      child: Center(
                        child: Text('Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
