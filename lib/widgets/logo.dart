import 'package:first_project/app_colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (dounds)=> LinearGradient(colors: [
        AppColors.primary,
        AppColors.sucanndar,
      ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
      ).createShader(Rect.fromLTWH(0, 0, dounds.height, dounds.height)),
      child: Text('LOGO',style: TextStyle(fontSize: 100,
          fontWeight: FontWeight.w600,
          fontFamily: 'Prime',
          color: Colors.white
      ) ,
      ),
    );
  }
}
