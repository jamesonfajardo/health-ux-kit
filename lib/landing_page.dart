import 'package:flutter/material.dart';

// widgets
import 'widget/primary_button.dart';
import 'widget/heading_group.dart';

// const
import 'package:testapp/const/typography.dart';
import 'package:testapp/const/color.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(), // this widget stretches the column to 100% width
            HeadingGroup(
              // group of heading and subheading
              heading: 'This is Health UX Kit, Welcome!',
              subheading:
                  'A health vertical UI kit made with love for Adobe XD',
            ),
            SizedBox(height: 32), // spacer
            Image.asset('asset/img/doctor.png'),
            SizedBox(height: 32), // spacer
            PrimaryButton(
              // main green gradient button
              text: 'GET STARTED',
              callback: () => Navigator.pushNamed(context, '/homepage'),
            ),
            SizedBox(height: 16), // spacer
            Row(
              // already have an account? caption
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: kBody2.copyWith(color: kGreen),
                ),
                // sign in button
                // we use gesturedetector because textbutton has inkwell
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/signin'),
                  child: Text(
                    'Sign In',
                    style: kBody2.copyWith(
                      color: kDarkBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
