import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

Widget ContainerList({
  required List<String> title,
  required List<String> icon,
  required List<String> url,
}) {
  return ListView.builder(
    itemCount: title.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          launchUrl(Uri.parse(url[index]));
        },
        child: Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
              const Spacer(),
              Text(
                title[index],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 15.0),
              SvgPicture.asset(icon[index], height: 30),
            ],
          ),
        ),
        
      );
    },
  );
}
