import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Sign Up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: context.dynamicHeight(0.02)),
              SizedBox(height: context.dynamicHeight(0.04)),
              const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: 'First & Last Name',
                    labelText: 'First & Last Name',
                    labelStyle: TextStyle(color: Colors.black),
                    //border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: context.dynamicHeight(0.02)),
              const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    //border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: context.dynamicHeight(0.02)),
              const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: 'Mobile Phone',
                    labelText: 'Mobile Phone',
                    labelStyle: TextStyle(color: Colors.black),
                    //border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: context.dynamicHeight(0.02)),
              const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: 'Group Special Code (optional)',
                    labelText: 'Group Special Code (optional)',
                    labelStyle: TextStyle(color: Colors.black),
                    //border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: context.dynamicHeight(0.02)),
              const TextField(
                obscureText: true,
                obscuringCharacter: '*',
                enableSuggestions: false,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    //border: OutlineInputBorder(),
                    //enabledBorder: OutlineInputBorder(
                    //  borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: context.dynamicHeight(0.10)),
              Center(
                child: Container(
                  height: context.dynamicHeight(0.07),
                  width: context.dynamicWidth(0.9),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff21074f)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
