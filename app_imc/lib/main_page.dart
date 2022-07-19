import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPAge({Key ? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarWidget(
        leftIcon: Icon(
          Icons.person,
        )
      )

    )
  }
}