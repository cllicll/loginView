import 'package:booksapp/core/constans/text_const.dart';
import 'package:booksapp/feature/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:kartal/kartal.dart';

import '../sign_in.dart';

TextField buildPrivateCodeTextField() {
    return  TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: TextConst().GroupCode,
                  labelText: TextConst().GroupCode,
                  labelStyle: TextStyle(color: Colors.black),
                  //border: OutlineInputBorder(),
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            );
  }

  TextField buildEmailTextField() {
    return TextField(
              controller: inputController,
              cursorColor: Colors.black,
              decoration:  InputDecoration(
                  hintText: TextConst().Email,
                  labelText: TextConst().Email,
                  labelStyle: TextStyle(color: Colors.black),
                  //border: OutlineInputBorder(),
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            );
  }

  TextField buildPassTextField() {
    return TextField(
              obscureText: true,
              obscuringCharacter: '*',
              enableSuggestions: false,
              controller: passwordController,
              cursorColor: Colors.black,
              decoration:  InputDecoration(
                  labelText: TextConst().Pass,
                  labelStyle: TextStyle(color: Colors.black),
                  //border: OutlineInputBorder(),
                  //enabledBorder: OutlineInputBorder(
                  //  borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            );
  }

  Row buildForgetPassTextButton() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    TextConst().ForgetPas,
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                )
              ],
            );
  }

  Center buildSignInButton(BuildContext context) {
    return Center(
              child: Container(
                height: context.dynamicHeight(0.07),
                width: context.dynamicWidth(0.9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff21074f)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    Text(
                      TextConst().SignIn,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
  }

  Row buildSignUpTextButton(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                    style: TextStyle(color: Colors.grey.shade600)),
                InkWell(
                  onTap: () {
                    context.navigateToPage(SignUp());
                  },
                  child:  Text(TextConst().SignUp,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            );
  }

  Center buildSignInGoogleButton(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (() {}),
        child: Container(
          height: context.dynamicHeight(0.06),
          width: context.dynamicWidth(0.7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.black])),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
              Icon(
                AntDesign.google,
                color: Colors.white,
              ),
              Text(
                TextConst().SignInGoogle,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

