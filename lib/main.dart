import 'package:flutter/material.dart';
import 'package:yemen_mobile/Screens/Contacts.dart';
import 'package:yemen_mobile/Screens/Layout.dart';
import 'package:yemen_mobile/Screens/Splash.dart';
import 'package:yemen_mobile/Screens/fav.dart';
import 'package:yemen_mobile/Screens/homeScreen.dart';
import 'package:yemen_mobile/Screens/login.dart';
import 'package:yemen_mobile/Screens/settings.dart';
import 'package:yemen_mobile/topapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Saplash(),
    );
  }
}

