import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget userDetials() {
  return Container(

    padding: const EdgeInsets.all(30),
    height: 140,
    width: double.infinity,
    decoration: BoxDecoration(


      color: Color.fromARGB(255, 180, 44, 76),
    ),
    child: Stack(
      
      children:[ 
        
        
        SvgPicture.asset('images/images/mainScreenBarBackground.svg',
        height: 90,
        
        ),
        Column(
        
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            ' أسم المستخدم ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: const Text(
                  'دفع مسبق',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                child: const Text(
                  ' 7********',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
  ]  ),
  );
}

AppBar customeAppBar(String title) {
  return AppBar(
    flexibleSpace: Image(image: AssetImage('images/images/mainScreenBarBackground.png',
    
    ),
    fit: BoxFit.cover,
    ),
   actions: [
    Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 15),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ]),
    ),
  ]);
}
