import 'package:flutter'
import 'package: imc/thene/app_colors.dart';
import 'package:flutter/
abstract class AppColors {
  static const Color appBarColor = Color(0xFF2A2831);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColor,
      child:SafeArea(
        child: Row(
          children: [
            leftIcon: Icon(Icons.person),

          ]
        ) 
        )
    );
  }
}