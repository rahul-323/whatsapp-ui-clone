import 'package:chat_app/colors/colors.dart';
import 'package:chat_app/responsive/responsive_layout.dart';
import 'package:chat_app/screens/mobile_screen_layout.dart';
import 'package:chat_app/screens/web_screen_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatAPP',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: ResponsiveLayout(
          mobileScreenlayout: MobileScreen(), webScreenLayout: WebScreen()),
    );
  }
}
