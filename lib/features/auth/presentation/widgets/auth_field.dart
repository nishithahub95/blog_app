

import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({Key? key, required this.hintText, required this.controller, this.isObscureText=false}) : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText
      ),
      validator: (value){
        if(value!.isEmpty){
          return'$hintText can\'t be null';
        }
        return null;
      },
obscureText:isObscureText ,
    );
  }
}
