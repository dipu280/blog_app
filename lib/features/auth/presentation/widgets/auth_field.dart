import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool isObscureText;
  const AuthField({
  super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  }) ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
       
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$hintText is missing";
        }
        return null;
      },
      obscureText: isObscureText,
      obscuringCharacter: '*',
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}