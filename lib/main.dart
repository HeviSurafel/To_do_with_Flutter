import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To do app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home()
    );
  }
}
