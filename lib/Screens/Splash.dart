import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yemen_mobile/Screens/Layout.dart';
import 'package:yemen_mobile/Screens/login.dart';

class Saplash extends StatefulWidget {
  const Saplash({super.key});

  @override
  State<Saplash> createState() => _SaplashState();
}

class _SaplashState extends State<Saplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 180, 44, 76),
      body: Stack(
          children:[
            SvgPicture.asset('images/icons/background_image.svg',
               color: Color.fromARGB(255, 180, 44, 76), 
            ),

              Center(
                child: Image.asset('images/images/ymLogo.png',
                
                height: 90,
                
                ),
              ),
          ]
              ),
    );
  }
}
