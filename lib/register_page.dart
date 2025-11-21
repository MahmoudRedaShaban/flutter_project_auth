import 'package:first_project/app_colors.dart';
import 'package:first_project/login_page.dart';
import 'package:first_project/widgets/custom_text_field.dart';
import 'package:first_project/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late final sizeScreean = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            actions: [],
          ),
            body: Padding(
              padding:  EdgeInsets.symmetric(horizontal: (sizeScreean.width* 0.05) ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    SizedBox(height: sizeScreean.height*0.03,),
                    Center(child: Logo()),
                    Text("Let's Get Started!",style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                    ),),
                    SizedBox(height: sizeScreean.height*0.005,),
                  Text("Create an account on osws to get all Features",style: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontSize: 11
                  ),),
                  SizedBox(height: sizeScreean.height*0.03,),

                  CustomTextField(controller: email, hint: 'First Name', icon: Icons.person_2_outlined),
                  SizedBox(height: sizeScreean.height*0.02,),
                  CustomTextField(controller: email, hint: 'Last Name', icon: Icons.person_2_outlined),
                  SizedBox(height: sizeScreean.height*0.02,),
                  CustomTextField(controller: email, hint: 'Username', icon: Icons.person_2_outlined),
                  SizedBox(height: sizeScreean.height*0.02,),
                  CustomTextField(controller: email, hint: 'Email', icon: Icons.email_outlined),
                  SizedBox(height: sizeScreean.height*0.02,),
                  CustomTextField(controller: email, hint: 'Password', icon: Icons.visibility_outlined),
                  SizedBox(height: sizeScreean.height*0.02,),
                  CustomTextField(controller: email, hint: 'Confirm Password', icon: Icons.visibility_outlined),
                  SizedBox(height: sizeScreean.height*0.03,),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ? ", style: GoogleFonts.inter(
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
