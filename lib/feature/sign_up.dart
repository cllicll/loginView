import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'widgets/sign_up_widget.dart';

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
              context.emptySizedHeightBoxHigh,
              buildNameTextField(),
              context.emptySizedHeightBoxLow,
              buildEmailTextField(),
              context.emptySizedHeightBoxLow,
              buildPhoneTextField(),
              context.emptySizedHeightBoxLow,
              buildCodeTextField(),
              context.emptySizedHeightBoxLow,
              buildPasswordTextField(),
              context.emptySizedHeightBoxHigh,
              buildSignUpButton(context),
            ],
          ),
        ),
      ),
    );
  }

  
}
