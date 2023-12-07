import 'package:flutter/material.dart';
import 'package:tiket/screens/bottom_bar.dart';
import 'package:tiket/utils/app_styles.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Pesan Tiket',
      theme: ThemeData(primaryColor: primary),
      home: const BottomBar(),
    );
  }
}
