

import 'dart:html';

import 'package:flutter/cupertino.dart';

class userInputWidget extends StatelessWidget {
  const userInputWidget({
    Key? key,
    required this.title,
    this.height,
  }) : super(key: key);

  final String title;
  final double? height;
  final String value;
  final Function onIncrease;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  } 
}