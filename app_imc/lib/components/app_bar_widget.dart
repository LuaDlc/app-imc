import 'package:app_imc/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWidget({Key? key, required this.leftIcon}) : super(key: key);
//variaveis final tem que ser inicializadas por conta do null safety
  final Widget leftIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 15,
            right:15,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftIcon,
              Expanded(
                child: Column(
                  children: [
                  Image.asset(
                    'assets/images/logo.png'),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                      'CALCULADORA IMC',
                       style: TextStyle(
                        color: AppColors.white,
                        ),
                       ),
                      ),
                    ],
                  ),
                 ),
              Icon(
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
  Size get preferredSize => const Size.fromHeight(135);
}