import 'package:first_project/app_colors.dart';
import 'package:first_project/register_page.dart';
import 'package:first_project/widgets/custom_text_field.dart';
import 'package:first_project/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
                  Text("LOGIN USER",style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),),
                  SizedBox(height: sizeScreean.height*0.01,),
                  Text("LOGIN USER WITH EMAIL AND PASSWORD",style: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontSize: 11
                  ),),
                  SizedBox(height: sizeScreean.height*0.05,),
                  CustomTextField(controller: email, hint: 'Username', icon: Icons.person_2_outlined),
                  SizedBox(height: sizeScreean.height*0.02,),
                  CustomTextField(controller: password, hint: 'Password', icon: Icons.person_2_outlined, secur: true,),
                  SizedBox(height: sizeScreean.height*0.01,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){

                      },
                        child: Text("ForGet Password ?", style: GoogleFonts.inter(fontSize: 11),)),
                  ),
                  SizedBox(height: sizeScreean.height*0.05,),
                  Container(
                      width: sizeScreean.width *0.3,
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
                      child: Text("Log IN", style: GoogleFonts.inter(
                          color: Colors.white,

                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  SizedBox(height: sizeScreean.height*0.02,),
                  Text("Or Sign In", style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                    ),
                  SizedBox(height: sizeScreean.height*0.02,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Ionicons.logo_facebook, color: Colors.blue.shade900, size: sizeScreean.height*0.05,),
                      SizedBox(width: sizeScreean.width*0.03,),
                      Icon(Ionicons.logo_google, color: Colors.red.shade900, size: sizeScreean.height*0.05,),
                      SizedBox(width: sizeScreean.width*0.03,),
                      Icon(Ionicons.logo_apple, size: sizeScreean.height*0.05,),
                    ],
                  ),
                  SizedBox(height: sizeScreean.height*0.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create an account ? ", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                      ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> RegisterPage()));
                        },
                        child: Text("Sign Up", style: GoogleFonts.inter(
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
