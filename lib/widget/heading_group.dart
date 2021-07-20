// HeadingGroup
// combination of heading and subheading

import 'package:flutter/material.dart';

// const
import '../const/color.dart';
import '../const/typography.dart';

class HeadingGroup extends StatelessWidget {
  HeadingGroup({
    this.heading,
    this.headingFontSize,
    this.subheading,
    this.textAlign,
    this.width,
  });

  final String? heading;
  final double? headingFontSize;
  final String? subheading;
  final TextAlign? textAlign;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 230,
      child: Column(
        children: [
          Text(
            heading ?? 'Heading goes here',
            style:
                kHeading3.copyWith(color: kDarkBlue, fontSize: headingFontSize),
            textAlign: textAlign ?? TextAlign.center,
          ),
          SizedBox(height: 23),
          Text(
            subheading ?? 'Subheading goes here',
            style: kBody2.copyWith(color: kGreen),
            textAlign: textAlign ?? TextAlign.center,
          ),
        ],
      ),
    );
  }
}
