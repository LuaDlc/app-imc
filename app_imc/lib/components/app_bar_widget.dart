import 'package:app_imc/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWidget({Key? key, required this.leftIcon}) : super(key: key);
//variaveis final tem que ser inicializadas por conta do null safety
  final Widget leftIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: AppColors.appBarColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right:15,
            ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leftIcon,
              Column(
                children: [
                Image.asset(
                  'assets/images/logo_kode_start.png',
                  width: 115,
                  height: 77,
                ),
                const Text('CALCULADORA IMC',
                style: TextStyle(color: AppColors.white),
                ),
                ],
              ),
              const Icon(
                Icons.menu,
                color: AppColors.white,
              ),
            ],
           ),
        ),
       ),
    );
  }


  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(130);
}