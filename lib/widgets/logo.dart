import 'package:first_project/app_colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    late Size sizeScreen = MediaQuery.of(context).size;
    return ShaderMask(
      shaderCallback: (dounds)=> LinearGradient(colors: [
        AppColors.primary,
        AppColors.sucanndar,
      ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
      ).createShader(Rect.fromLTWH(0, 0, dounds.height, dounds.height)),
      child: Text('osws',style: TextStyle(fontSize: sizeScreen.width*0.23,
          fontWeight: FontWeight.w800,
          shadows: [
            Shadow(color: AppColors.primary),
            Shadow(color: AppColors.sucanndar )

          ],
          fontFamily: 'Prime',
          fontStyle: FontStyle.normal,
          color: Colors.white
      ) ,
      ),
    );
  }
}
