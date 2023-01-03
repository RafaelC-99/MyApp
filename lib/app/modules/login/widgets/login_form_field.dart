// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginFormField extends StatefulWidget {
  final String labelText;
  final TextInputType? textInputType;
  final bool obscureText;

  const LoginFormField({
    Key? key,
    required this.labelText,
    required this.textInputType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  State<LoginFormField> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return TextFormField(
      style: const TextStyle(color: Colors.white),
      keyboardType: widget.textInputType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: size.height * 0.038,
        ),
      ),
    );
  }
}
