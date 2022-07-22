import 'package:app_imc/components/user_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_imc/theme/app_colors.dart';
import 'package:app_imc/components/app_bar_widget.dart';

import 'components/bottom_button_widget.dart';

class MainPage extends StatefulWidget {
  const MainPAge({Key ? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int heightPerson = 170;
  int weightPerson = 65;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: UserInputWidget(
              title: 'Qual a sua altura?',
              value: heightPerson.toString(),
              unit: 'cm',
              onDecrease() {
                setState((){
                  heightPerson--;
                });
              },
              onIncrease: () {
                setState((){
                  heightPerson++;
                });
              },
            ),
          ),
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: UserInputWidget(
              title: 'Qual é o seu peso?',
              value: weightPerson.toString(),
              unit: 'kg',
              onDecrease() {
                setState((){
                  weightPerson--;
                });
              },
              onIncrease: () {
                setState((){
                  weightPerson++;
                });
              },
            ),
          ),
          const Spacer(),
          BottomButtonWidget(
            title: 'Calcular resultado',
            onPressed: () {
              Navigator.push(
                context,
              MaterialPageRoute(
                builder: (context) =>  ResultPage(
                  height: heightPerson,
                  weight: weightPerson
                  ),
                  ),
              );
              ),
            },
          )
        ],
      ),
    );
  }

  
}