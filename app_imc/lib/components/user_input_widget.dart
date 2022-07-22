import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import '../theme/app_colors.dart';

class UserInputWidget extends StatelessWidget {
  const UserInputWidget({
    Key? key,
    required this.title,
    this.height,
    required this.value,
    required this.onIncrease,
    required this.onDecrease,
    required this.unit,
  }) : super(key: key);

  final String title;
  final double? height;
  final String value;
  final String unit;
  final Function onIncrease; //passando uma fução como argumento
  final Function() onDecrease;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
        style: TextStyle(
          color: AppColors.white),
        ),
        SizedBox(height: 10),//espaçamento entre container e texto
        Container(
          height: height ?? 170,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                GestureDetector(
                  onTap: onDecrease,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryDarkColor,
                    ),
                    child: Icon(
                      Icons.remove,
                      color: AppColors.white,
                      size: 42,
                    ),
                  ),
                ),
                SizedBox(
                  width:108,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment:CrossAxisAlignment.end,
                    children: [
                      Text(
                        value,
                        style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                      ),
                      ),
                      Text(
                        unit,
                        style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                    ],
                  )
                ),
                GestureDetector(
                  onTap:() => onIncrease(),
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    color: AppColors.primaryDarkColor,
                    ),
                    child: const Icon(
                        Icons.add,
                        color: AppColors.white,
                        size: 42,
                      ),
                  ),
                ),
                ],
              )
          )
          ),
      ],
    );
  } 
}