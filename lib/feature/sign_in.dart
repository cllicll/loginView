import 'package:booksapp/feature/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:kartal/kartal.dart';

import 'widgets/sign_in_widget.dart';

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
              context.emptySizedHeightBoxHigh,
              buildPrivateCodeTextField(),
              context.emptySizedHeightBoxLow,
              buildEmailTextField(),
              context.emptySizedHeightBoxLow,
              buildPassTextField(),
              context.emptySizedHeightBoxLow,
              buildForgetPassTextButton(),
              context.emptySizedHeightBoxHigh,
              buildSignInButton(context),
              context.emptySizedHeightBoxLow,
              buildSignUpTextButton(context),
              Divider(height: context.dynamicHeight(0.06), color: Colors.black),
              buildSignInGoogleButton(context),
            ],
          ),
        ),
      ),
    );
  }




}
