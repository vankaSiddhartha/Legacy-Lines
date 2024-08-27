import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool isPass;
  const AuthField({super.key, required this.hint, required this.controller, this.isPass = false});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(

      decoration: InputDecoration(
        hintText: hint,

      ),
      obscureText: isPass,
      validator: (value){
        if(value == null){
          return "${hint} is missing";
        }
        return null;
      },
    );
  }
}
