import 'package:flutter/material.dart';
import 'package:scanqr/profile_person.dart';
import 'package:scanqr/qr_scanner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent, elevation: 0.0)),
      // home: const QRScanner(),
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner',
    );
  }
}
