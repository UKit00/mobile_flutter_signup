import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/view/widgets/button.global.dart';
import 'package:login_signup/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            //color: Colors.green,
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Logo",
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Login to your account",
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormGlobal(
                  controller: emailController,
                  text: "Email",
                  obscur: false,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormGlobal(
                  controller: passController,
                  text: "Password",
                  obscur: true,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonGlobal(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
