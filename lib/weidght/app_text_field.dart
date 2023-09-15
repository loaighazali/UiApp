import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {

  final String hintText ;
  final IconData perfIcon ;
  final TextInputType textInputType ;
  final TextEditingController textEditingController ;
  final String? textError ;
  final bool obckuor ;


  AppTextField(
      {
        required this.textEditingController ,
        required this.hintText,
        required this.perfIcon,
        this.textInputType = TextInputType.text,
        this.textError,
        this.obckuor = false ,
      }
      );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:textEditingController ,
      keyboardType: textInputType,
      obscureText: obckuor,
      decoration: InputDecoration(
        hintText: hintText,
        errorText: textError,
        errorBorder: buildOutlineInputBorder(borderColor: Colors.red),
        enabledBorder: buildOutlineInputBorder(borderColor: Colors.blue),
        focusedBorder: buildOutlineInputBorder(borderColor: Colors.cyanAccent),
        focusedErrorBorder: buildOutlineInputBorder(borderColor: Colors.red),
        prefixIcon: Icon(
         perfIcon,
          color: Colors.cyan,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({Color borderColor = Colors.blue}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide:
         BorderSide(color: borderColor, width: 2),
      );
  }
}