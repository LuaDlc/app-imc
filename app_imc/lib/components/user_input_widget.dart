import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class UserInputWidget extends StatelessWidget {
  const UserInputWidget({
    Key? key,
    required this.title,
    this.height, required this.value, required this.onIncrease,
  }) : super(key: key);

  final String title;
  final double? height;
  final String value;
  final Function onIncrease;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStyle(color: AppColors.white),
        ),

      ],
    );
  } 
}