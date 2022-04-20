import 'package:booksapp/feature/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:kartal/kartal.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

TextEditingController inputController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Sign In',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: context.dynamicHeight(0.02)),
              SizedBox(height: context.dynamicHeight(0.04)),
              const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: 'Optional Group Special Code',
                    labelText: 'Optional Group Special Code',
                    labelStyle: TextStyle(color: Colors.black),
                    //border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: context.dynamicHeight(0.04)),
              TextField(
                controller: inputController,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                    hintText: 'Email Adress',
                    labelText: 'Email Adress',
                    labelStyle: TextStyle(color: Colors.black),
                    //border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: context.dynamicHeight(0.04)),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                enableSuggestions: false,
                controller: passwordController,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    //border: OutlineInputBorder(),
                    //enabledBorder: OutlineInputBorder(
                    //  borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: context.dynamicHeight(0.04)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Your Password",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                  )
                ],
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
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: context.dynamicHeight(0.01)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: TextStyle(color: Colors.grey.shade600)),
                  InkWell(
                    onTap: () {
                      context.navigateToPage(SignUp());
                    },
                    child: const Text(' Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Divider(height: context.dynamicHeight(0.06), color: Colors.black),
              Center(
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
                      children: const [
                        Icon(
                          AntDesign.google,
                          color: Colors.white,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
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
