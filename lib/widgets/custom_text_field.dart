import 'package:first_project/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required  this.controller, required this.hint, required this.icon, this.secur=false});
  final  TextEditingController controller;
  final String hint;
  final IconData icon;
  final IconData _subIcon =  Icons.remove_red_eye;
  final bool secur ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller ,
      obscureText: secur,
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        prefixIcon: Icon(icon),
        suffixIcon: secur ? Icon( _subIcon ): null,
        fillColor: Color(0xffF2F2F2),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey.shade300
            )
        ) ,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primary,
            )
        ),
      ) ,
    );
  }
}
