import 'package:flutter/material.dart';
import 'package:yemen_mobile/Screens/favcard.dart';
import 'package:yemen_mobile/topapp.dart';

class Favert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: customeAppBar('المفظلة'),
        body: favcardList(
            mint: ['300دقيقه '],
            mb: ['4 جيجا'],
            messg: ['300 رساله'],
            date: ['18-9-2023'],
            title: ['باقة مزايا فورجي الشهرية'],
            icon: ['images/icons/ic_internet_packages_service2.svg']));
  }
}
