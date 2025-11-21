import 'package:first_project/app_colors.dart';
import 'package:first_project/login_page.dart';
import 'package:first_project/widgets/custom_text_field.dart';
import 'package:first_project/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForegetPassword extends StatefulWidget {
  const ForegetPassword({super.key});

  @override
  State<ForegetPassword> createState() => _ForegetPasswordState();
}

class _ForegetPasswordState extends State<ForegetPassword> {
  TextEditingController email = TextEditingController();
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
                SizedBox(height: sizeScreean.height*0.17,),
                Center(child: Logo()),
                Text("Forget Password",style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),),

                SizedBox(height: sizeScreean.height*0.05,),
                CustomTextField(controller: email, hint: 'Email', icon: Icons.person_2_outlined),

                SizedBox(height: sizeScreean.height*0.05,),
                Container(
                  width: sizeScreean.width *0.4,
                  height: sizeScreean.height * 0.06,
                  decoration: BoxDecoration(

                    boxShadow:  [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 80,
                        spreadRadius: 0.1
                    )],
                    borderRadius: BorderRadius.circular(5),
                    gradient:  LinearGradient(colors: [
                      AppColors.primary,
                      Colors.black26
                    ], begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    ),
                  ),
                  child: Center(
                    child: Text("Send Email", style: GoogleFonts.inter(
                        color: Colors.white,

                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                SizedBox(height: sizeScreean.height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Go TO  ", style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop(MaterialPageRoute(builder: (builder)=> LoginPages()));
                      },
                      child: Text("Login ", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ],
                )

              ],
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
