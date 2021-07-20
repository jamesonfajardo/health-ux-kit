import 'package:flutter/material.dart';

// Color
import '../const/color.dart';

class SignInTextField extends StatelessWidget {
  SignInTextField({
    this.label,
    this.icon,
  });

  final String? label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // wrap textfield with container to adjust its size
      child: TextField(
        style: TextStyle(color: kDarkBlue),
        decoration: InputDecoration(
          suffixIcon: Icon(icon ?? Icons.ac_unit),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 26, horizontal: 32),
          filled: true,
          fillColor: Colors.white,
          hintText: label ?? 'Textfield Label',
          hintStyle: TextStyle(color: kLightGrey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      width: 312,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x1656c596),
            spreadRadius: 8,
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
    );
  }
}
