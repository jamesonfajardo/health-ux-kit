import 'package:flutter/material.dart';
import '../const/typography.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    this.text,
    this.width,
    this.callback,
  });

  final String? text;
  final double? width;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback ?? () => print('gradient button internal callback'),
      child: Container(
        child: Center(
          child: Text(
            text ?? 'BUTTON TEXT',
            style: kCaption.copyWith(color: Colors.white),
          ),
        ),
        width: width ?? 312,
        height: 55,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff7BE495),
              Color(0xff56C596),
              Color(0xff56C596),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
