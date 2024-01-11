import 'package:dcourier/Profile/profile.dart';
import 'package:dcourier/bottomNavbar.dart';
import 'package:dcourier/Pesanan/Pesanan.dart';
import 'package:dcourier/coba.dart';
import './Authentication/register.dart';
import 'package:dcourier/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './Authentication/login.dart';
import 'bottomNavbar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
