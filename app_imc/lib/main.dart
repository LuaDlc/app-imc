import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


@override
Widget buil(BuildContext context) {
  return MaterialApp(
    home: MainPage(),
  );
}
}