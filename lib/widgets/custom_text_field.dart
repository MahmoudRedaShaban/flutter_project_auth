import 'package:first_project/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required  this.controller, required this.hint, required this.icon, this.secur=false});
  final  TextEditingController controller;
  final String hint;
  final IconData icon;
  final bool secur ;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final IconData _subIcon =  Icons.remove_red_eye;
  late bool sec = false;
  @override
  Widget build(BuildContext context) {
    sec = widget.secur;
    return TextField(
      controller: widget.controller ,
      obscureText: sec,
      decoration: InputDecoration(
        filled: true,
        hintText: widget.hint,
        prefixIcon: Icon(widget.icon),
        suffixIcon: sec ? IconButton( onPressed: (){
          setState(() {
            sec !=sec;
          });
        },icon: sec ?  Icon(_subIcon): Icon(Icons.remove_red_eye_outlined), ): null,
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
