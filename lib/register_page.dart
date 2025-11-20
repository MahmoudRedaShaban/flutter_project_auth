import 'package:first_project/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    late final sizeScreean = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
            body: Padding(
              padding:  EdgeInsets.symmetric(horizontal: (sizeScreean.width* 0.05) ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    SizedBox(height: sizeScreean.height*0.1,),
                    Center(child: Logo()),
                    Text("Register NEW USER",style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                    ),),
                    SizedBox(height: sizeScreean.height*0.08,),
                ]
                ),
            ),

        ),
        Positioned(
            left: 40,
            child: SvgPicture.asset('assets/images/Rectangle 12.svg')),
        Positioned(
            left: 0,
            child: SvgPicture.asset('assets/images/Rectangle 11.svg')),
      ],
    );
  }
}
