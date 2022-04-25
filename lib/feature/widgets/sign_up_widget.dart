import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/constans/text_const.dart';

TextField buildPasswordTextField() {
    return  TextField(
              obscureText: true,
              obscuringCharacter: '*',
              enableSuggestions: false,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  labelText: TextConst().Pass,
                  labelStyle: TextStyle(color: Colors.black),
                  //border: OutlineInputBorder(),
                  //enabledBorder: OutlineInputBorder(
                  //  borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            );
  }

  TextField buildCodeTextField() {
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

  TextField buildPhoneTextField() {
    return  TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: TextConst().Phone,
                  labelText: TextConst().Phone,
                  labelStyle: TextStyle(color: Colors.black),
                  //border: OutlineInputBorder(),
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            );
  }

  TextField buildEmailTextField() {
    return  TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: TextConst().Email,
                  labelText:TextConst().Email,
                  labelStyle: TextStyle(color: Colors.black),
                  //border: OutlineInputBorder(),
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            );
  }

  TextField buildNameTextField() {
    return  TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: TextConst().Name,
                  labelText: TextConst().Name,
                  labelStyle: TextStyle(color: Colors.black),
                  //border: OutlineInputBorder(),
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            );
  }

  Center buildSignUpButton(BuildContext context) {
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
              TextConst().SignUp,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

