import 'package:flutter/material.dart';

// const
import 'package:testapp/const/color.dart';

// widgets
import 'widget/heading_group.dart';
import 'widget/primary_button.dart';
import 'widget/signin_textfield.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('asset/img/icon.png'),
        centerTitle: true, // align the icon to center
        shadowColor: Colors.transparent, // disable appbar shadow
        backgroundColor: Colors.transparent, // disable appbar bgcolor
        foregroundColor: Colors.transparent, // disable appbar bgcolor
        elevation: 0, // disable elevation, may trigger shadows
        iconTheme: IconThemeData(color: kDarkBlue), // change back button color
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(),
                  HeadingGroup(
                    heading: 'Login',
                    headingFontSize: 17,
                    subheading:
                        'Enter your login details to access your account',
                    width: 200,
                  ),
                  SizedBox(height: 32), // spacer

                  SignInTextField(
                    label: 'Username',
                    icon: Icons.circle_outlined,
                  ),
                  SizedBox(height: 16), // spacer
                  SignInTextField(
                    label: 'Password',
                    icon: Icons.remove_red_eye_outlined,
                  ),

                  SizedBox(height: 32), // spacer
                  PrimaryButton(
                    // main green gradient button
                    width: 266,
                    text: 'LOG IN',
                    callback: () => print('landing page btn'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
