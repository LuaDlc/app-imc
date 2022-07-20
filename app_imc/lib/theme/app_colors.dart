import 'package:flutter'
import 'package: imc/thene/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color appBarColor = Color(0xFF2A2831);
  static const Color white = Colors.white;
  static const Color background = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColor,
      child: (
        child: Row(
          children: [
            leftIcon: Icon(Icons.person),

          ]
        ) 
        )
    );
  }
}