import 'package:flutter/material.dart';
import 'package:ticket_booking_ui/screens/bottom_bar.dart';
import 'package:ticket_booking_ui/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
        primarySwatch: Colors.red
      ),
      home:  BottomBar(),
    );
  }
}

