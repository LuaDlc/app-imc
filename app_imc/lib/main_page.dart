import 'package:app_imc/components/user_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_imc/theme/app_colors.dart';
import 'package:app_imc/components/app_bar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPAge({Key ? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
///Documentação
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarWidget(
        leftIcon: Icon(
          Icons.person, color: AppColors.white,
          ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: UserInputWidget(title: 'Qual a sua altura?'),
          )
        ],

      ),
    );
  }
}