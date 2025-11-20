
import 'package:first_project/login_page.dart';
import 'package:first_project/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=> LoginPages())),);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    late Size sizeScreen = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xffFFFFFF),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height:  sizeScreen.height * 0.13,),
              Logo(),
              SizedBox(height:  sizeScreen.height * 0.07,),
              SvgPicture.asset('assets/images/vector1.svg', width: sizeScreen.width ),
              SizedBox(height:  sizeScreen.height * 0.03,),
              Text('Lorem App Test' , style: GoogleFonts.inder(
                fontWeight: FontWeight.bold,
                fontSize: 24,

              ),),
              SizedBox(height:  sizeScreen.height * 0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("lorem1 s addsad asd asd asd asd asd sadasda s\n dasdasdasdas dasd asdasasd as",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: Colors.black
                  ),
                  maxLines: 2,),
                ],
              )

            ],
          ),
        ),
        Positioned(
        top: 0,
        left:sizeScreen.width*0.27,
        child:         SvgPicture.asset('assets/images/Line_screen.svg'),
        ),
        Positioned(
          top: 0,
          left: sizeScreen.width *0.088,
          bottom: sizeScreen.height*0.28,
          child:         SvgPicture.asset('assets/images/Group_screen.svg'),

        ),
        Positioned(
          top: 0,
          left: sizeScreen.width *0.15,
          child:         SvgPicture.asset('assets/images/Line_screen.svg'),
        ),
        Positioned(
          top: 0,
          left: sizeScreen.width *0.207,
          bottom: sizeScreen.height*0.32,
          child:         SvgPicture.asset('assets/images/Group_screen.svg'),

        ),
      ],

    );
  }
}
