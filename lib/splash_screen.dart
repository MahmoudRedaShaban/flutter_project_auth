
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
    Future.delayed(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginPages())),);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height:  110,),
              Logo(),
              SizedBox(height:  20,),
              SvgPicture.asset('assets/images/vector1.svg', width: 800 ),
              SizedBox(height:  20,),
              Text('Lorem App Test' , style: GoogleFonts.inder(
                fontWeight: FontWeight.bold,
                fontSize: 24,

              ),),
              SizedBox(height:  10,),
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
        left: 60,
        bottom: 600,
        child:         SvgPicture.asset('assets/images/line.svg'),
        ),
        Positioned(
          top: 0,
          left: 34,
          bottom: 240,
          child:         SvgPicture.asset('assets/images/light.svg'),

        ),
        Positioned(
          top: 0,
          left: 110,
          bottom: 600,
          child:         SvgPicture.asset('assets/images/line.svg'),
        ),
        Positioned(
          top: 0,
          left: 84,
          bottom: 300,
          child:         SvgPicture.asset('assets/images/light.svg'),

        ),
      ],

    );
  }
}
